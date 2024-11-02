.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 10
    .line 11
    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 12
    .line 13
    if-eqz v4, :cond_10

    .line 14
    .line 15
    const-string/jumbo v4, "onMediaDataLoaded, "

    .line 16
    .line 17
    .line 18
    const-string v5, ", "

    .line 19
    .line 20
    invoke-static {v4, v0, v5, v1, v5}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/controls/models/player/MediaData;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "FaceWidgetNotificationControllerWrapper"

    .line 36
    .line 37
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 41
    .line 42
    new-instance v15, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    iget-object v6, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->actions:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 73
    .line 74
    new-instance v8, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;

    .line 75
    .line 76
    iget-object v9, v7, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    if-nez v9, :cond_0

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    if-nez v9, :cond_1

    .line 90
    .line 91
    :goto_1
    move-object v9, v5

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    :goto_2
    iget-object v10, v7, Lcom/android/systemui/media/controls/models/player/MediaAction;->action:Ljava/lang/Runnable;

    .line 98
    .line 99
    iget-object v7, v7, Lcom/android/systemui/media/controls/models/player/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    .line 100
    .line 101
    invoke-direct {v8, v9, v10, v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v6, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 109
    .line 110
    if-eqz v6, :cond_7

    .line 111
    .line 112
    const/4 v7, -0x1

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    new-instance v9, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    .line 118
    .line 119
    iget-object v10, v6, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    if-nez v10, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    if-nez v10, :cond_4

    .line 133
    .line 134
    :goto_3
    move-object v10, v5

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    :goto_4
    iget-object v11, v6, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 141
    .line 142
    if-nez v11, :cond_5

    .line 143
    .line 144
    const-string v11, ""

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_5
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    :goto_5
    if-nez v8, :cond_6

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    :goto_6
    iget-boolean v6, v6, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->enabled:Z

    .line 159
    .line 160
    invoke-direct {v9, v6, v10, v11, v7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v20, v9

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_7
    move-object/from16 v20, v5

    .line 167
    .line 168
    :goto_7
    new-instance v11, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;

    .line 169
    .line 170
    iget v6, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 171
    .line 172
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    const/4 v7, 0x0

    .line 177
    if-nez v6, :cond_8

    .line 178
    .line 179
    move v6, v7

    .line 180
    goto :goto_8

    .line 181
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    :goto_8
    iget-boolean v8, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->initialized:Z

    .line 186
    .line 187
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    if-nez v9, :cond_9

    .line 192
    .line 193
    move v9, v7

    .line 194
    goto :goto_9

    .line 195
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    :goto_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    if-nez v10, :cond_a

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    :goto_a
    move v10, v7

    .line 211
    iget-object v7, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->app:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v12, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    .line 214
    .line 215
    if-eqz v12, :cond_f

    .line 216
    .line 217
    iget-object v3, v3, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    if-nez v3, :cond_b

    .line 220
    .line 221
    goto :goto_b

    .line 222
    :cond_b
    invoke-virtual {v12, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-nez v3, :cond_c

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-nez v3, :cond_d

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    if-nez v3, :cond_e

    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_e
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    goto :goto_c

    .line 248
    :cond_f
    :goto_b
    move-object v3, v5

    .line 249
    :goto_c
    iget-object v12, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->artist:Ljava/lang/CharSequence;

    .line 250
    .line 251
    iget-object v13, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->song:Ljava/lang/CharSequence;

    .line 252
    .line 253
    iget-object v14, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 254
    .line 255
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 256
    .line 257
    move-object/from16 v16, v5

    .line 258
    .line 259
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 260
    .line 261
    move-object/from16 v17, v5

    .line 262
    .line 263
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 264
    .line 265
    move-object/from16 v18, v5

    .line 266
    .line 267
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 268
    .line 269
    move-object/from16 v19, v5

    .line 270
    .line 271
    iget-boolean v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 272
    .line 273
    move/from16 v21, v5

    .line 274
    .line 275
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 276
    .line 277
    move-object/from16 v22, v5

    .line 278
    .line 279
    iget-boolean v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 280
    .line 281
    move/from16 v23, v5

    .line 282
    .line 283
    iget-object v5, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->notificationKey:Ljava/lang/String;

    .line 284
    .line 285
    move-object/from16 v24, v5

    .line 286
    .line 287
    iget-boolean v2, v2, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 288
    .line 289
    move/from16 v25, v2

    .line 290
    .line 291
    move-object v5, v11

    .line 292
    move-object v2, v7

    .line 293
    move v7, v8

    .line 294
    move v8, v9

    .line 295
    move v9, v10

    .line 296
    move-object v10, v2

    .line 297
    move-object v2, v11

    .line 298
    move-object v11, v3

    .line 299
    invoke-direct/range {v5 .. v25}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;-><init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v4, v0, v1, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;)V

    .line 303
    .line 304
    .line 305
    :cond_10
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onMediaDataRemoved, "

    .line 2
    .line 3
    .line 4
    const-string v1, "FaceWidgetNotificationControllerWrapper"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;->this$0:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method
