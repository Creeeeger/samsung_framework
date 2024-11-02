.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBeforeRenderList(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsCovered:Z

    .line 8
    .line 9
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mIsFolded:Z

    .line 10
    .line 11
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 12
    .line 13
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 14
    .line 15
    iget v4, v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-ne v4, v6, :cond_0

    .line 19
    .line 20
    move v4, v6

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v4, 0x0

    .line 23
    :goto_0
    if-nez v4, :cond_2

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v7, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    move v7, v6

    .line 33
    :goto_2
    sget-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    .line 34
    .line 35
    if-eqz v8, :cond_3

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    const-class v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setKeyguardStateWhenAddLockscreenNotificationInfoArray(Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    const/4 v9, 0x2

    .line 61
    if-eqz v8, :cond_d

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 68
    .line 69
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 74
    .line 75
    iget v12, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mPluginLockMode:I

    .line 76
    .line 77
    const/16 v13, 0x8

    .line 78
    .line 79
    if-ne v12, v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    if-eqz v2, :cond_5

    .line 86
    .line 87
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 88
    .line 89
    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 90
    .line 91
    iget-boolean v12, v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 92
    .line 93
    if-nez v12, :cond_5

    .line 94
    .line 95
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    if-eqz v7, :cond_7

    .line 100
    .line 101
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 105
    .line 106
    check-cast v12, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-lez v12, :cond_6

    .line 113
    .line 114
    move v12, v6

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    const/4 v12, 0x0

    .line 117
    :goto_4
    if-nez v12, :cond_7

    .line 118
    .line 119
    sget-boolean v12, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    .line 120
    .line 121
    if-eqz v12, :cond_7

    .line 122
    .line 123
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mBubblesOptional:Ljava/util/Optional;

    .line 124
    .line 125
    invoke-virtual {v12}, Ljava/util/Optional;->isPresent()Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_7

    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    check-cast v12, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 136
    .line 137
    iget-object v14, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 138
    .line 139
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    check-cast v12, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 144
    .line 145
    iget-object v15, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v12, v15, v14}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-nez v12, :cond_7

    .line 152
    .line 153
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    .line 154
    .line 155
    new-instance v14, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 156
    .line 157
    invoke-direct {v14}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 161
    .line 162
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 163
    .line 164
    iput-object v5, v14, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 165
    .line 166
    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 167
    .line 168
    iput-object v5, v14, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 169
    .line 170
    iput-object v15, v14, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v5, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 173
    .line 174
    iput-object v5, v14, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 175
    .line 176
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    :cond_7
    if-eqz v4, :cond_c

    .line 180
    .line 181
    iget v5, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 182
    .line 183
    if-eq v5, v6, :cond_9

    .line 184
    .line 185
    if-ne v5, v9, :cond_8

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_8
    const/4 v5, 0x0

    .line 189
    goto :goto_6

    .line 190
    :cond_9
    :goto_5
    move v5, v6

    .line 191
    :goto_6
    if-nez v5, :cond_b

    .line 192
    .line 193
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 194
    .line 195
    iget-object v5, v5, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 196
    .line 197
    const-string v9, "lock_screen_show_notifications_on_keyguard"

    .line 198
    .line 199
    invoke-virtual {v5, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-ne v5, v6, :cond_a

    .line 208
    .line 209
    move v5, v6

    .line 210
    goto :goto_7

    .line 211
    :cond_a
    const/4 v5, 0x0

    .line 212
    :goto_7
    if-eqz v5, :cond_b

    .line 213
    .line 214
    const-class v5, Lcom/android/systemui/util/DesktopManager;

    .line 215
    .line 216
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Lcom/android/systemui/util/DesktopManager;

    .line 221
    .line 222
    check-cast v5, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_c

    .line 229
    .line 230
    :cond_b
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :cond_c
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->restoreVisibility(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_d
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    .line 241
    .line 242
    if-nez v1, :cond_e

    .line 243
    .line 244
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    xor-int/2addr v1, v6

    .line 249
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    .line 250
    .line 251
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 252
    .line 253
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    .line 254
    .line 255
    iget-object v3, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mLock:Ljava/lang/Object;

    .line 256
    .line 257
    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 259
    .line 260
    const/16 v5, 0x65

    .line 261
    .line 262
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mHandler:Lcom/android/systemui/statusbar/LockscreenNotificationManager$LockscreenNotificationMgrHandler;

    .line 266
    .line 267
    const/4 v4, 0x0

    .line 268
    invoke-virtual {v1, v5, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 273
    .line 274
    .line 275
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 277
    .line 278
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 279
    .line 280
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    .line 281
    .line 282
    if-ne v1, v6, :cond_13

    .line 283
    .line 284
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 285
    .line 286
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    .line 287
    .line 288
    xor-int/2addr v2, v6

    .line 289
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mNotificationInfoArray:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    iget-object v4, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    .line 296
    .line 297
    if-eqz v4, :cond_12

    .line 298
    .line 299
    iget v1, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    .line 300
    .line 301
    if-eq v1, v6, :cond_10

    .line 302
    .line 303
    if-ne v1, v9, :cond_f

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_f
    const/4 v1, 0x0

    .line 307
    goto :goto_9

    .line 308
    :cond_10
    :goto_8
    move v1, v6

    .line 309
    :goto_9
    if-eqz v1, :cond_11

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_11
    move v6, v2

    .line 313
    :goto_a
    iget-object v1, v4, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    .line 314
    .line 315
    if-eqz v1, :cond_12

    .line 316
    .line 317
    invoke-interface {v1, v6, v3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setExpandState(ZI)V

    .line 318
    .line 319
    .line 320
    :cond_12
    const/4 v1, 0x0

    .line 321
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/LockScreenNotiIconCoordinator;->mHasVisibleNotificationOnKeyguard:Z

    .line 322
    .line 323
    :cond_13
    return-void

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    throw v0
.end method
