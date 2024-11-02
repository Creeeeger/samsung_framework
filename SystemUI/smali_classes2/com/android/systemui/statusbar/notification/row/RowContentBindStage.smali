.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
.super Lcom/android/systemui/statusbar/notification/row/BindStage;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

.field public final mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

.field public final mPm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/BindStage;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mPm:Landroid/os/PowerManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final abortStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    .line 9
    .line 10
    .line 11
    sget-boolean p0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-boolean p0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final executeStage(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mLogger:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 19
    .line 20
    sget-object v4, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logStageParams$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger$logStageParams$2;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    .line 24
    const-string v5, "RowContentBindStage"

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    invoke-virtual {v2, v5, v3, v4, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v3, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v3, v4}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    .line 47
    .line 48
    iget v2, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    .line 49
    .line 50
    iget v3, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 51
    .line 52
    and-int v4, v3, v2

    .line 53
    .line 54
    xor-int/lit8 v2, v2, 0xf

    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mBinder:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    .line 57
    .line 58
    move-object v12, v3

    .line 59
    check-cast v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;

    .line 60
    .line 61
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    move v5, v3

    .line 66
    :goto_0
    const/4 v11, 0x0

    .line 67
    const/4 v6, 0x2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    and-int v7, v2, v5

    .line 71
    .line 72
    if-eqz v7, :cond_4

    .line 73
    .line 74
    if-eq v5, v3, :cond_3

    .line 75
    .line 76
    if-eq v5, v6, :cond_2

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    if-eq v5, v7, :cond_1

    .line 80
    .line 81
    const/16 v6, 0x8

    .line 82
    .line 83
    if-eq v5, v6, :cond_0

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 87
    .line 88
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    const/4 v8, 0x3

    .line 91
    invoke-direct {v7, v12, v14, v15, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v11, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 99
    .line 100
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 101
    .line 102
    invoke-direct {v8, v12, v14, v15, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 110
    .line 111
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 112
    .line 113
    invoke-direct {v7, v12, v14, v15, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v3, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object v6, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 121
    .line 122
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    .line 123
    .line 124
    invoke-direct {v7, v12, v14, v15, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v11, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    not-int v6, v5

    .line 131
    and-int/2addr v2, v6

    .line 132
    shl-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;

    .line 136
    .line 137
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    .line 141
    .line 142
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isLowPriority:Z

    .line 143
    .line 144
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    .line 145
    .line 146
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    .line 147
    .line 148
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    .line 149
    .line 150
    iput-boolean v5, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    .line 151
    .line 152
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    .line 153
    .line 154
    new-instance v10, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;

    .line 155
    .line 156
    move-object/from16 v5, p3

    .line 157
    .line 158
    invoke-direct {v10, v0, v5}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v5, v15, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 174
    .line 175
    iget-object v7, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->hasCache()Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-nez v8, :cond_6

    .line 186
    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :cond_6
    new-instance v8, Ljava/util/HashSet;

    .line 190
    .line 191
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 192
    .line 193
    .line 194
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 195
    .line 196
    if-nez v5, :cond_7

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_7
    const-string v9, "android.messages"

    .line 200
    .line 201
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    if-nez v9, :cond_8

    .line 206
    .line 207
    move-object v9, v13

    .line 208
    goto :goto_2

    .line 209
    :cond_8
    invoke-static {v9}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    :goto_2
    if-eqz v9, :cond_a

    .line 214
    .line 215
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v16

    .line 223
    if-eqz v16, :cond_a

    .line 224
    .line 225
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    check-cast v16, Landroid/app/Notification$MessagingStyle$Message;

    .line 230
    .line 231
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 232
    .line 233
    .line 234
    move-result v17

    .line 235
    if-eqz v17, :cond_9

    .line 236
    .line 237
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v8, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    const/4 v13, 0x0

    .line 245
    goto :goto_3

    .line 246
    :cond_a
    const-string v9, "android.messages.historic"

    .line 247
    .line 248
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    if-nez v5, :cond_b

    .line 253
    .line 254
    const/4 v5, 0x0

    .line 255
    goto :goto_4

    .line 256
    :cond_b
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :goto_4
    if-eqz v5, :cond_d

    .line 261
    .line 262
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    :cond_c
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_d

    .line 271
    .line 272
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 277
    .line 278
    invoke-static {v9}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-eqz v13, :cond_c

    .line 283
    .line 284
    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_d
    iput-object v8, v7, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    .line 293
    .line 294
    :goto_6
    iget-object v5, v7, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->mWantedUriSet:Ljava/util/Set;

    .line 295
    .line 296
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    invoke-direct {v8, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v5, v8}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 302
    .line 303
    .line 304
    :goto_7
    if-eqz v1, :cond_f

    .line 305
    .line 306
    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 307
    .line 308
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCacheImpl;->mNotifCachedContentViews:Ljava/util/Map;

    .line 311
    .line 312
    check-cast v1, Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroid/util/SparseArray;

    .line 319
    .line 320
    if-nez v1, :cond_e

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 324
    .line 325
    .line 326
    :cond_f
    :goto_8
    and-int/lit8 v1, v4, 0x1

    .line 327
    .line 328
    if-eqz v1, :cond_10

    .line 329
    .line 330
    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 331
    .line 332
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 333
    .line 334
    .line 335
    :cond_10
    and-int/lit8 v1, v4, 0x2

    .line 336
    .line 337
    if-eqz v1, :cond_11

    .line 338
    .line 339
    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 342
    .line 343
    .line 344
    :cond_11
    and-int/lit8 v1, v4, 0x4

    .line 345
    .line 346
    if-eqz v1, :cond_12

    .line 347
    .line 348
    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 349
    .line 350
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 351
    .line 352
    .line 353
    :cond_12
    and-int/lit8 v1, v4, 0x8

    .line 354
    .line 355
    if-eqz v1, :cond_13

    .line 356
    .line 357
    iget-object v1, v14, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 358
    .line 359
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    .line 360
    .line 361
    .line 362
    :cond_13
    sget-boolean v1, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    .line 363
    .line 364
    if-eqz v1, :cond_14

    .line 365
    .line 366
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 367
    .line 368
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 373
    .line 374
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    move/from16 v16, v1

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_14
    move/from16 v16, v11

    .line 386
    .line 387
    :goto_9
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    .line 388
    .line 389
    iget-object v3, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 390
    .line 391
    iget-boolean v5, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 392
    .line 393
    iget-object v6, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 394
    .line 395
    iget-object v7, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    .line 396
    .line 397
    iget-boolean v9, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isLowPriority:Z

    .line 398
    .line 399
    iget-boolean v8, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    .line 400
    .line 401
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    .line 402
    .line 403
    iget-object v1, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 404
    .line 405
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    .line 406
    .line 407
    iget-boolean v14, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsMediaInQS:Z

    .line 408
    .line 409
    iget-object v15, v12, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    .line 410
    .line 411
    move-object/from16 v18, v1

    .line 412
    .line 413
    move-object v1, v13

    .line 414
    move/from16 v19, v2

    .line 415
    .line 416
    move-object v2, v3

    .line 417
    move v3, v5

    .line 418
    move-object v5, v6

    .line 419
    move-object/from16 v6, p1

    .line 420
    .line 421
    move/from16 v20, v8

    .line 422
    .line 423
    move-object/from16 v8, p2

    .line 424
    .line 425
    move-object/from16 v21, v10

    .line 426
    .line 427
    move/from16 v10, v20

    .line 428
    .line 429
    move v0, v11

    .line 430
    move/from16 v11, v19

    .line 431
    .line 432
    move-object v0, v12

    .line 433
    move-object/from16 v12, v21

    .line 434
    .line 435
    move-object/from16 p3, v13

    .line 436
    .line 437
    move-object/from16 v13, v18

    .line 438
    .line 439
    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Z)V

    .line 440
    .line 441
    .line 442
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 443
    .line 444
    if-eqz v1, :cond_15

    .line 445
    .line 446
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackground()Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    move-object/from16 v1, p3

    .line 451
    .line 452
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_15
    move-object/from16 v1, p3

    .line 457
    .line 458
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    new-array v2, v2, [Ljava/lang/Void;

    .line 462
    .line 463
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    .line 465
    .line 466
    :goto_a
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 467
    .line 468
    if-nez v0, :cond_16

    .line 469
    .line 470
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    .line 471
    .line 472
    if-eqz v0, :cond_17

    .line 473
    .line 474
    :cond_16
    move-object/from16 v0, p0

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mPm:Landroid/os/PowerManager;

    .line 477
    .line 478
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-nez v0, :cond_17

    .line 483
    .line 484
    new-instance v0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    const/4 v2, 0x0

    .line 491
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;-><init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;)V

    .line 492
    .line 493
    .line 494
    const-wide/16 v1, 0x3e8

    .line 495
    .line 496
    iput-wide v1, v0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mMaxTimeout:J

    .line 497
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    const-string v2, "@Inflate:"

    .line 501
    .line 502
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v2, p1

    .line 506
    .line 507
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iput-object v1, v0, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->mTag:Ljava/lang/String;

    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mInflationWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 523
    .line 524
    invoke-interface {v0, v3}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    :cond_17
    return-void
.end method

.method public final newStageParams()Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
