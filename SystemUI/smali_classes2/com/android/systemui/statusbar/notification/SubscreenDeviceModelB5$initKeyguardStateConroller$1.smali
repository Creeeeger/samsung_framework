.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    .line 15
    .line 16
    const-string v4, "S.S.N."

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v0, :cond_1f

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 40
    .line 41
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 42
    .line 43
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v6, v1

    .line 49
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v7, v1

    .line 63
    :goto_2
    if-eqz v3, :cond_4

    .line 64
    .line 65
    iget v8, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 66
    .line 67
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    move-object v8, v1

    .line 73
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v10, " onKeyguardShowingChanged() isMethodSecure : "

    .line 76
    .line 77
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, ", isShowing: "

    .line 84
    .line 85
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", isUnlocked : "

    .line 92
    .line 93
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, ", getAction() : "

    .line 100
    .line 101
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_1e

    .line 119
    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    .line 123
    .line 124
    if-ne v0, v5, :cond_5

    .line 125
    .line 126
    move v0, v5

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move v0, v2

    .line 129
    :goto_4
    if-eqz v0, :cond_8

    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 136
    .line 137
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 138
    .line 139
    if-nez v0, :cond_6

    .line 140
    .line 141
    move v0, v5

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    move v0, v2

    .line 144
    :goto_5
    if-eqz v0, :cond_8

    .line 145
    .line 146
    if-nez v3, :cond_7

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_7
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    .line 150
    .line 151
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mCallbackClicked:Z

    .line 166
    .line 167
    if-ne v0, v5, :cond_9

    .line 168
    .line 169
    move v0, v5

    .line 170
    goto :goto_7

    .line 171
    :cond_9
    move v0, v2

    .line 172
    :goto_7
    if-eqz v0, :cond_a

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotification()V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 178
    .line 179
    if-eqz v0, :cond_a

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 182
    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 186
    .line 187
    .line 188
    :cond_a
    if-eqz v3, :cond_b

    .line 189
    .line 190
    iget v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 191
    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_8

    .line 197
    :cond_b
    move-object v0, v1

    .line 198
    :goto_8
    const-string v6, " isClickedKnoxItem :"

    .line 199
    .line 200
    if-nez v0, :cond_c

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    const/4 v8, 0x4

    .line 208
    if-ne v7, v8, :cond_12

    .line 209
    .line 210
    if-eqz v3, :cond_d

    .line 211
    .line 212
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_d
    move-object v0, v1

    .line 216
    :goto_9
    if-eqz v0, :cond_22

    .line 217
    .line 218
    if-eqz v3, :cond_e

    .line 219
    .line 220
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_e
    move-object v0, v1

    .line 224
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_10

    .line 229
    .line 230
    invoke-static {v6, v0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    if-eqz v3, :cond_f

    .line 234
    .line 235
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_f
    move-object v0, v1

    .line 239
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_16

    .line 243
    .line 244
    :cond_10
    if-eqz v3, :cond_11

    .line 245
    .line 246
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_11
    move-object v0, v1

    .line 250
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_16

    .line 254
    .line 255
    :cond_12
    :goto_d
    if-nez v0, :cond_13

    .line 256
    .line 257
    goto :goto_11

    .line 258
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-ne v7, v5, :cond_18

    .line 263
    .line 264
    if-eqz v3, :cond_14

    .line 265
    .line 266
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_14
    move-object v0, v1

    .line 270
    :goto_e
    if-eqz v0, :cond_22

    .line 271
    .line 272
    if-eqz v3, :cond_15

    .line 273
    .line 274
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 275
    .line 276
    if-eqz v0, :cond_15

    .line 277
    .line 278
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 279
    .line 280
    if-eqz v0, :cond_15

    .line 281
    .line 282
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 283
    .line 284
    if-eqz v0, :cond_15

    .line 285
    .line 286
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 287
    .line 288
    goto :goto_f

    .line 289
    :cond_15
    move-object v0, v1

    .line 290
    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_16

    .line 295
    .line 296
    invoke-static {v6, v0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_16

    .line 300
    .line 301
    :cond_16
    if-eqz v3, :cond_22

    .line 302
    .line 303
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 304
    .line 305
    if-eqz v0, :cond_22

    .line 306
    .line 307
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 308
    .line 309
    if-eqz v5, :cond_17

    .line 310
    .line 311
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 312
    .line 313
    goto :goto_10

    .line 314
    :cond_17
    move-object v6, v1

    .line 315
    :goto_10
    invoke-virtual {v0, v6, v5, v2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_16

    .line 319
    .line 320
    :cond_18
    :goto_11
    if-nez v0, :cond_19

    .line 321
    .line 322
    goto :goto_12

    .line 323
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    const/4 v6, 0x2

    .line 328
    if-ne v5, v6, :cond_1a

    .line 329
    .line 330
    const-string v0, "ACTION_KEYGUARD_BIO_LIST_HIDE_CONTENT"

    .line 331
    .line 332
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 333
    .line 334
    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto :goto_16

    .line 338
    :cond_1a
    :goto_12
    if-nez v0, :cond_1b

    .line 339
    .line 340
    goto :goto_16

    .line 341
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const/4 v5, 0x3

    .line 346
    if-ne v0, v5, :cond_22

    .line 347
    .line 348
    if-eqz v3, :cond_1c

    .line 349
    .line 350
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    .line 351
    .line 352
    goto :goto_13

    .line 353
    :cond_1c
    move-object v0, v1

    .line 354
    :goto_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    if-eqz v3, :cond_1d

    .line 358
    .line 359
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mDetailAdapterItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    .line 360
    .line 361
    goto :goto_14

    .line 362
    :cond_1d
    move-object v5, v1

    .line 363
    :goto_14
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-static {p0, v0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    .line 367
    .line 368
    .line 369
    goto :goto_16

    .line 370
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->clearMainList()V

    .line 371
    .line 372
    .line 373
    goto :goto_16

    .line 374
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v0, :cond_21

    .line 377
    .line 378
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 379
    .line 380
    if-eqz v6, :cond_20

    .line 381
    .line 382
    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 383
    .line 384
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 385
    .line 386
    if-nez v6, :cond_20

    .line 387
    .line 388
    goto :goto_15

    .line 389
    :cond_20
    move v5, v2

    .line 390
    :goto_15
    if-eqz v5, :cond_21

    .line 391
    .line 392
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 393
    .line 394
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 395
    .line 396
    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_21

    .line 401
    .line 402
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 403
    .line 404
    if-eqz v5, :cond_21

    .line 405
    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string v6, "Unlock click notification : "

    .line 409
    .line 410
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 414
    .line 415
    invoke-static {v5, v6, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 419
    .line 420
    if-eqz v5, :cond_21

    .line 421
    .line 422
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 423
    .line 424
    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    .line 425
    .line 426
    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 427
    .line 428
    .line 429
    :cond_21
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    .line 430
    .line 431
    :cond_22
    :goto_16
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    .line 432
    .line 433
    if-nez p0, :cond_23

    .line 434
    .line 435
    if-eqz v3, :cond_24

    .line 436
    .line 437
    iput v2, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    .line 438
    .line 439
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 440
    .line 441
    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    .line 442
    .line 443
    goto :goto_17

    .line 444
    :cond_23
    const-string v0, "onKeyguardShowingChanged - mIsClickedPopupKeyguardUnlockShowing : "

    .line 445
    .line 446
    invoke-static {v0, p0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :cond_24
    :goto_17
    return-void
.end method
