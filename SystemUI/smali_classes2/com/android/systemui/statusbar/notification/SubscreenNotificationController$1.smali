.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->getFunctionDelegate()Lkotlin/Function;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 15
    .line 16
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    .line 1
    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 5
    .line 6
    const-class v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 7
    .line 8
    const-string v4, "onEntryViewBound"

    .line 9
    .line 10
    const-string v5, "onEntryViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, v7

    .line 14
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->getFunctionDelegate()Lkotlin/Function;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 4
    .line 5
    if-eqz p0, :cond_43

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsReplyNotification:Z

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "S.S.N."

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p0, "entryViewBound parent - mIsReplyNotification :"

    .line 16
    .line 17
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_22

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "entryViewBound parent :"

    .line 25
    .line 26
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSubScreen()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notiShowBlocked:Z

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string p0, " entryViewBound : show notification is disabled. not showing List"

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto/16 :goto_22

    .line 55
    .line 56
    :cond_1
    if-eqz v0, :cond_43

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isBubbleNotificationSuppressed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "entryViewBound parent - bubble is removed:"

    .line 67
    .line 68
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyListAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->notifyGroupAdapterItemRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->removeMainHashItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_22

    .line 91
    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->checkBubbleLastHistoryReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const-string p0, "entryViewBound parent - bubble Reply :"

    .line 99
    .line 100
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_22

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiKeySet:Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    const/4 v5, 0x1

    .line 120
    const/4 v6, 0x0

    .line 121
    if-eqz v4, :cond_32

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 124
    .line 125
    if-eqz v0, :cond_13

    .line 126
    .line 127
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 128
    .line 129
    if-eqz v4, :cond_13

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 132
    .line 133
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 134
    .line 135
    if-eqz v4, :cond_13

    .line 136
    .line 137
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_13

    .line 144
    .line 145
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 146
    .line 147
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 148
    .line 149
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 150
    .line 151
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 152
    .line 153
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 158
    .line 159
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 160
    .line 161
    const-string v8, "SubscreenNotificationDetailAdapter"

    .line 162
    .line 163
    if-eqz v7, :cond_8

    .line 164
    .line 165
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 166
    .line 167
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-ge v9, v10, :cond_5

    .line 178
    .line 179
    const-string v4, "isItemUpdateCompleted - size is not max"

    .line 180
    .line 181
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-ne v6, v9, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    sub-int/2addr v6, v5

    .line 202
    :goto_0
    if-ltz v6, :cond_8

    .line 203
    .line 204
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    check-cast v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 209
    .line 210
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    check-cast v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    .line 215
    .line 216
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v11, :cond_6

    .line 219
    .line 220
    iget-object v12, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    .line 221
    .line 222
    if-eqz v12, :cond_6

    .line 223
    .line 224
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-nez v11, :cond_6

    .line 229
    .line 230
    const-string v4, "isItemUpdateCompleted - size is max - not match text"

    .line 231
    .line 232
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_6
    iget-wide v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 237
    .line 238
    iget-wide v12, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    .line 239
    .line 240
    cmp-long v9, v10, v12

    .line 241
    .line 242
    if-eqz v9, :cond_7

    .line 243
    .line 244
    const-string v4, "isItemUpdateCompleted - size is max - not match PostTime"

    .line 245
    .line 246
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :goto_1
    move v4, v5

    .line 250
    goto :goto_2

    .line 251
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_8
    move v4, v3

    .line 255
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string/jumbo v7, "updateSelectNotificationInfo - mIsSendedQuickReply : "

    .line 258
    .line 259
    .line 260
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    .line 264
    .line 265
    iget-boolean v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    .line 266
    .line 267
    const-string v10, ", isItemUpdateCompleted() : "

    .line 268
    .line 269
    invoke-static {v6, v9, v10, v4, v8}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const/4 v6, -0x1

    .line 273
    if-eqz v4, :cond_f

    .line 274
    .line 275
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 276
    .line 277
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 278
    .line 279
    if-eqz v4, :cond_f

    .line 280
    .line 281
    iget-boolean v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    .line 282
    .line 283
    if-eqz v4, :cond_9

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 286
    .line 287
    .line 288
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mIsSendedQuickReply:Z

    .line 289
    .line 290
    iput v5, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mCompleteItemUpdateReason:I

    .line 291
    .line 292
    goto/16 :goto_5

    .line 293
    .line 294
    :cond_9
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 295
    .line 296
    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    .line 298
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 303
    .line 304
    if-eqz v10, :cond_d

    .line 305
    .line 306
    if-nez v9, :cond_a

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_a
    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    instance-of v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 314
    .line 315
    if-nez v10, :cond_b

    .line 316
    .line 317
    const-string/jumbo v4, "setPrevFirstAndLastHistoryInfo - not SubscreenParentDetailItemViewHolder"

    .line 318
    .line 319
    .line 320
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_b
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 325
    .line 326
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    .line 331
    .line 332
    instance-of v9, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;

    .line 333
    .line 334
    if-nez v9, :cond_e

    .line 335
    .line 336
    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 337
    .line 338
    if-nez v9, :cond_c

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_c
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-lez v9, :cond_e

    .line 346
    .line 347
    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 348
    .line 349
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getHeight()I

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    iput v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    .line 354
    .line 355
    iput v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    .line 356
    .line 357
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 358
    .line 359
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    iput-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 364
    .line 365
    add-int/2addr v9, v6

    .line 366
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    iput-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    .line 371
    .line 372
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    .line 373
    .line 374
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    .line 380
    iget v9, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 381
    .line 382
    iput v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    .line 383
    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string/jumbo v10, "setPrevFirstAndLastHistoryInfo - prevFirstHisotoryView params.bottomMargin :"

    .line 387
    .line 388
    .line 389
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 393
    .line 394
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v4, ", mPrevBodyLayoutHeght :"

    .line 398
    .line 399
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    .line 403
    .line 404
    invoke-static {v9, v4, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_d
    :goto_3
    const-string/jumbo v4, "setPrevFirstAndLastHistoryInfo - value is null"

    .line 409
    .line 410
    .line 411
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    :cond_e
    :goto_4
    const/4 v4, 0x2

    .line 415
    iput v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mCompleteItemUpdateReason:I

    .line 416
    .line 417
    :goto_5
    const/4 v4, 0x0

    .line 418
    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mPrevSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_f
    const/4 v4, 0x0

    .line 422
    :goto_6
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mIsShownReplyButtonWindow:Z

    .line 423
    .line 424
    if-eqz v7, :cond_10

    .line 425
    .line 426
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 427
    .line 428
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 429
    .line 430
    invoke-virtual {v7, v6, v4, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setSmartReplyResultValue(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 435
    .line 436
    .line 437
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mUpdatedInfo:Z

    .line 438
    .line 439
    :goto_7
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 440
    .line 441
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 442
    .line 443
    if-eqz v6, :cond_12

    .line 444
    .line 445
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 446
    .line 447
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-eqz v6, :cond_11

    .line 452
    .line 453
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 456
    .line 457
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 460
    .line 461
    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_12

    .line 466
    .line 467
    :cond_11
    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 468
    .line 469
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 474
    .line 475
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 476
    .line 477
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    .line 478
    .line 479
    sget-object v7, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$resetCount$1;

    .line 480
    .line 481
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {v6, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 487
    .line 488
    if-eqz v6, :cond_12

    .line 489
    .line 490
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->resetBadgeUi(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 496
    .line 497
    .line 498
    :cond_12
    move-object v6, v4

    .line 499
    :cond_13
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 500
    .line 501
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isUpdatedRemoteView(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_15

    .line 510
    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 512
    .line 513
    .line 514
    move-result p1

    .line 515
    if-eqz p1, :cond_14

    .line 516
    .line 517
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 518
    .line 519
    if-eqz p0, :cond_43

    .line 520
    .line 521
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 522
    .line 523
    if-eqz p0, :cond_43

    .line 524
    .line 525
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_22

    .line 529
    .line 530
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 531
    .line 532
    if-eqz p0, :cond_43

    .line 533
    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 535
    .line 536
    if-eqz p0, :cond_43

    .line 537
    .line 538
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_22

    .line 542
    .line 543
    :cond_15
    const-string v0, "isUpdateEntry parent : "

    .line 544
    .line 545
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListArrayHashMap:Ljava/util/LinkedHashMap;

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;

    .line 555
    .line 556
    if-nez v0, :cond_16

    .line 557
    .line 558
    const-string v0, "isUpdateEntry parent - oldEntry is null "

    .line 559
    .line 560
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_16

    .line 564
    .line 565
    :cond_16
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 566
    .line 567
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 568
    .line 569
    if-eqz v7, :cond_17

    .line 570
    .line 571
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 572
    .line 573
    if-eqz v7, :cond_17

    .line 574
    .line 575
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 576
    .line 577
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    goto :goto_8

    .line 582
    :cond_17
    move-object v7, v6

    .line 583
    :goto_8
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 584
    .line 585
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    if-eqz v8, :cond_18

    .line 594
    .line 595
    const-string v0, "isUpdateEntry parent - Group Sumarry: "

    .line 596
    .line 597
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_17

    .line 601
    .line 602
    :cond_18
    if-eqz v4, :cond_19

    .line 603
    .line 604
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    goto :goto_9

    .line 609
    :cond_19
    move-object v8, v6

    .line 610
    :goto_9
    if-eqz v7, :cond_1a

    .line 611
    .line 612
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v9

    .line 616
    goto :goto_a

    .line 617
    :cond_1a
    move-object v9, v6

    .line 618
    :goto_a
    invoke-static {v8, v9, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-nez v8, :cond_1b

    .line 623
    .line 624
    const-string v4, "isUpdateEntry parent - text Title: "

    .line 625
    .line 626
    invoke-static {v4, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    if-eqz v7, :cond_2d

    .line 630
    .line 631
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 632
    .line 633
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 634
    .line 635
    goto/16 :goto_16

    .line 636
    .line 637
    :cond_1b
    if-eqz v4, :cond_1c

    .line 638
    .line 639
    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 640
    .line 641
    goto :goto_b

    .line 642
    :cond_1c
    move-object v8, v6

    .line 643
    :goto_b
    if-eqz v7, :cond_1d

    .line 644
    .line 645
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    .line 646
    .line 647
    goto :goto_c

    .line 648
    :cond_1d
    move-object v9, v6

    .line 649
    :goto_c
    invoke-static {v8, v9, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-nez v8, :cond_1e

    .line 654
    .line 655
    const-string v4, "isUpdateEntry parent - text content: "

    .line 656
    .line 657
    invoke-static {v4, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    if-eqz v7, :cond_2d

    .line 661
    .line 662
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 663
    .line 664
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 665
    .line 666
    goto/16 :goto_16

    .line 667
    .line 668
    :cond_1e
    if-eqz v4, :cond_1f

    .line 669
    .line 670
    iget-wide v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 671
    .line 672
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    goto :goto_d

    .line 677
    :cond_1f
    move-object v8, v6

    .line 678
    :goto_d
    if-eqz v7, :cond_20

    .line 679
    .line 680
    iget-wide v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    .line 681
    .line 682
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    goto :goto_e

    .line 687
    :cond_20
    move-object v9, v6

    .line 688
    :goto_e
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v8

    .line 692
    if-nez v8, :cond_21

    .line 693
    .line 694
    const-string v4, "isUpdateEntry parent - when: "

    .line 695
    .line 696
    invoke-static {v4, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    if-eqz v7, :cond_2d

    .line 700
    .line 701
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 702
    .line 703
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 704
    .line 705
    goto/16 :goto_16

    .line 706
    .line 707
    :cond_21
    if-eqz v4, :cond_22

    .line 708
    .line 709
    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 710
    .line 711
    goto :goto_f

    .line 712
    :cond_22
    move-object v8, v6

    .line 713
    :goto_f
    if-nez v8, :cond_24

    .line 714
    .line 715
    if-eqz v7, :cond_23

    .line 716
    .line 717
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 718
    .line 719
    goto :goto_10

    .line 720
    :cond_23
    move-object v8, v6

    .line 721
    :goto_10
    if-nez v8, :cond_27

    .line 722
    .line 723
    :cond_24
    if-eqz v4, :cond_26

    .line 724
    .line 725
    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 726
    .line 727
    if-eqz v8, :cond_26

    .line 728
    .line 729
    if-eqz v7, :cond_25

    .line 730
    .line 731
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 732
    .line 733
    goto :goto_11

    .line 734
    :cond_25
    move-object v9, v6

    .line 735
    :goto_11
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Icon;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v8

    .line 739
    if-nez v8, :cond_26

    .line 740
    .line 741
    move v8, v5

    .line 742
    goto :goto_12

    .line 743
    :cond_26
    move v8, v3

    .line 744
    :goto_12
    if-eqz v8, :cond_28

    .line 745
    .line 746
    :cond_27
    const-string v4, "isUpdateEntry parent - large Icon: "

    .line 747
    .line 748
    invoke-static {v4, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    if-eqz v7, :cond_2d

    .line 752
    .line 753
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 754
    .line 755
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$MainListHashMapItem;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 756
    .line 757
    goto :goto_16

    .line 758
    :cond_28
    if-eqz v4, :cond_29

    .line 759
    .line 760
    iget-boolean v0, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 761
    .line 762
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    goto :goto_13

    .line 767
    :cond_29
    move-object v0, v6

    .line 768
    :goto_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    if-eqz v0, :cond_2b

    .line 776
    .line 777
    if-eqz v7, :cond_2a

    .line 778
    .line 779
    iget-boolean v0, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    .line 780
    .line 781
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    goto :goto_14

    .line 786
    :cond_2a
    move-object v0, v6

    .line 787
    :goto_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_2b

    .line 795
    .line 796
    iget v0, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    .line 797
    .line 798
    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 799
    .line 800
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 801
    .line 802
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 803
    .line 804
    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getUnreadCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    .line 805
    .line 806
    .line 807
    move-result v4

    .line 808
    if-eq v0, v4, :cond_2b

    .line 809
    .line 810
    const-string v0, "isUpdateEntry parent - unReadCount: "

    .line 811
    .line 812
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    goto :goto_16

    .line 816
    :cond_2b
    if-eqz v7, :cond_2c

    .line 817
    .line 818
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 819
    .line 820
    goto :goto_15

    .line 821
    :cond_2c
    move-object v0, v6

    .line 822
    :goto_15
    if-eqz v0, :cond_2e

    .line 823
    .line 824
    :cond_2d
    :goto_16
    move v0, v5

    .line 825
    goto :goto_18

    .line 826
    :cond_2e
    :goto_17
    move v0, v3

    .line 827
    :goto_18
    if-eqz v0, :cond_33

    .line 828
    .line 829
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    if-eqz v4, :cond_31

    .line 842
    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    .line 844
    .line 845
    .line 846
    move-result v4

    .line 847
    if-nez v4, :cond_31

    .line 848
    .line 849
    if-nez v0, :cond_31

    .line 850
    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 852
    .line 853
    if-eqz v0, :cond_2f

    .line 854
    .line 855
    move-object v4, v0

    .line 856
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 857
    .line 858
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 859
    .line 860
    .line 861
    move-result-object v4

    .line 862
    goto :goto_19

    .line 863
    :cond_2f
    move-object v4, v6

    .line 864
    :goto_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    if-eqz v0, :cond_30

    .line 868
    .line 869
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 870
    .line 871
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    if-eqz v0, :cond_30

    .line 876
    .line 877
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 878
    .line 879
    goto :goto_1a

    .line 880
    :cond_30
    move-object v0, v6

    .line 881
    :goto_1a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string/jumbo v8, "updateMainListItem isChildGroup : "

    .line 884
    .line 885
    .line 886
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    const-string v8, ", addEntry : "

    .line 893
    .line 894
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v8, ", key : "

    .line 901
    .line 902
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-static {v7, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    goto :goto_1b

    .line 909
    :cond_31
    move-object v4, p1

    .line 910
    move-object v0, v1

    .line 911
    :goto_1b
    if-eqz v0, :cond_33

    .line 912
    .line 913
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListUpdateItemHashMap:Ljava/util/LinkedHashMap;

    .line 914
    .line 915
    invoke-virtual {v7, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    goto :goto_1c

    .line 919
    :cond_32
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 920
    .line 921
    .line 922
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 923
    .line 924
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 929
    .line 930
    .line 931
    move-result v0

    .line 932
    if-nez v0, :cond_33

    .line 933
    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainListAddEntryHashMap:Ljava/util/LinkedHashMap;

    .line 935
    .line 936
    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    :cond_33
    :goto_1c
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 940
    .line 941
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 946
    .line 947
    if-eqz v0, :cond_34

    .line 948
    .line 949
    move v0, v5

    .line 950
    goto :goto_1d

    .line 951
    :cond_34
    move v0, v3

    .line 952
    :goto_1d
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showPopupEntryKeySet:Landroid/util/ArraySet;

    .line 953
    .line 954
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v7

    .line 958
    if-nez v7, :cond_36

    .line 959
    .line 960
    if-eqz v0, :cond_35

    .line 961
    .line 962
    goto :goto_1e

    .line 963
    :cond_35
    const-string/jumbo p0, "return entryViewBound : "

    .line 964
    .line 965
    .line 966
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_22

    .line 970
    .line 971
    :cond_36
    :goto_1e
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    if-eqz v0, :cond_39

    .line 975
    .line 976
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 977
    .line 978
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    const-string v7, "com.skt.prod.dialer"

    .line 983
    .line 984
    const-string v8, "com.samsung.android.incallui"

    .line 985
    .line 986
    filled-new-array {v7, v8}, [Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v7

    .line 990
    invoke-static {v7, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v4

    .line 994
    if-eqz v4, :cond_37

    .line 995
    .line 996
    const-string/jumbo p0, "return call Package : "

    .line 997
    .line 998
    .line 999
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_22

    .line 1003
    .line 1004
    :cond_37
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1005
    .line 1006
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1011
    .line 1012
    const-string v7, "call"

    .line 1013
    .line 1014
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v7

    .line 1018
    if-eqz v7, :cond_38

    .line 1019
    .line 1020
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1021
    .line 1022
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    const-class v8, Landroid/app/Notification$CallStyle;

    .line 1027
    .line 1028
    invoke-virtual {v7, v8}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v7

    .line 1032
    if-eqz v7, :cond_38

    .line 1033
    .line 1034
    move v7, v5

    .line 1035
    goto :goto_1f

    .line 1036
    :cond_38
    move v7, v3

    .line 1037
    :goto_1f
    if-nez v7, :cond_39

    .line 1038
    .line 1039
    const-string v7, "alarm"

    .line 1040
    .line 1041
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v7

    .line 1045
    if-nez v7, :cond_39

    .line 1046
    .line 1047
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1048
    .line 1049
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v7

    .line 1053
    if-eqz v7, :cond_39

    .line 1054
    .line 1055
    const-string p0, "fullscreenIntent and this category is not supported in subscreen, so return : "

    .line 1056
    .line 1057
    const-string p1, ", category = "

    .line 1058
    .line 1059
    invoke-static {p0, v1, p1, v4, v2}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_22

    .line 1063
    .line 1064
    :cond_39
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    .line 1065
    .line 1066
    if-eqz v0, :cond_3b

    .line 1067
    .line 1068
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    if-nez v0, :cond_3b

    .line 1073
    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->launchFullscreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    if-eqz v0, :cond_3a

    .line 1079
    .line 1080
    goto/16 :goto_22

    .line 1081
    .line 1082
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    const-string v7, "entryViewBound parent - put fullscreenIntent  :"

    .line 1085
    .line 1086
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v4, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    :cond_3b
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    if-nez v0, :cond_3c

    .line 1107
    .line 1108
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 1109
    .line 1110
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_3c

    .line 1119
    .line 1120
    const-string p0, "entryViewBound GroupSummary :"

    .line 1121
    .line 1122
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    goto/16 :goto_22

    .line 1126
    .line 1127
    :cond_3c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 1128
    .line 1129
    .line 1130
    move-result v0

    .line 1131
    if-eqz v0, :cond_41

    .line 1132
    .line 1133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1134
    .line 1135
    if-eqz v0, :cond_3d

    .line 1136
    .line 1137
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 1138
    .line 1139
    if-eqz v0, :cond_3d

    .line 1140
    .line 1141
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 1142
    .line 1143
    goto :goto_20

    .line 1144
    :cond_3d
    move-object v0, v6

    .line 1145
    :goto_20
    if-eqz v0, :cond_41

    .line 1146
    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopActivityName()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    const-string v4, "com.android.systemui.subscreen.SubHomeActivity"

    .line 1152
    .line 1153
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v0

    .line 1157
    if-eqz v0, :cond_41

    .line 1158
    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1160
    .line 1161
    if-eqz v0, :cond_3e

    .line 1162
    .line 1163
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 1164
    .line 1165
    if-eqz v0, :cond_3e

    .line 1166
    .line 1167
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 1168
    .line 1169
    if-eqz v0, :cond_3e

    .line 1170
    .line 1171
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 1172
    .line 1173
    goto :goto_21

    .line 1174
    :cond_3e
    move-object v0, v6

    .line 1175
    :goto_21
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    if-eqz v0, :cond_41

    .line 1180
    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 1182
    .line 1183
    if-eqz v0, :cond_3f

    .line 1184
    .line 1185
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 1186
    .line 1187
    if-eqz v0, :cond_3f

    .line 1188
    .line 1189
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v6

    .line 1193
    :cond_3f
    if-eqz v6, :cond_41

    .line 1194
    .line 1195
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getDetailAdapterAutoScrollCurrentPositionByReceive(Landroid/view/View;)I

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    const/4 v4, 0x3

    .line 1200
    if-ne v0, v4, :cond_40

    .line 1201
    .line 1202
    move v3, v5

    .line 1203
    :cond_40
    if-eqz v3, :cond_41

    .line 1204
    .line 1205
    new-instance p0, Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    const-string p1, "entryViewBound scrollCurrentPosition : "

    .line 1208
    .line 1209
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    const-string p1, " , key : "

    .line 1216
    .line 1217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object p0

    .line 1227
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    .line 1229
    .line 1230
    goto :goto_22

    .line 1231
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-eqz v0, :cond_42

    .line 1236
    .line 1237
    const-string p0, " return entryViewBound isCoverBriefAllowed - "

    .line 1238
    .line 1239
    invoke-static {p0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_22

    .line 1243
    :cond_42
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showSubscreenNotification()V

    .line 1247
    .line 1248
    .line 1249
    :cond_43
    :goto_22
    return-void
.end method
