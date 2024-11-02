.class public final Lcom/android/systemui/usb/StorageNotification$12;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreated(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mMoveCallback ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "StorageNotification"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lcom/android/systemui/usb/StorageNotification$MoveInfo;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput p1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "android.intent.extra.TITLE"

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mPrevStatus:Landroid/util/ArrayMap;

    .line 69
    .line 70
    iget p1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 p2, -0x1

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final onStatusChanged(IIJ)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    const-string v5, "mMoveCallback ("

    .line 10
    .line 11
    const-string v6, ", "

    .line 12
    .line 13
    invoke-static {v5, v1, v6, v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v7, ")"

    .line 21
    .line 22
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v8, "StorageNotification"

    .line 30
    .line 31
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 35
    .line 36
    iget-object v5, v5, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    const-string v0, "Ignoring unknown move "

    .line 47
    .line 48
    invoke-static {v0, v1, v8}, Landroidx/core/graphics/drawable/IconCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const-string v10, "android.os.storage.extra.VOLUME_ID"

    .line 57
    .line 58
    const-string v11, "DSK"

    .line 59
    .line 60
    const/4 v13, 0x1

    .line 61
    const-string v14, "com.android.tv.settings"

    .line 62
    .line 63
    const-string v15, "com.android.settings"

    .line 64
    .line 65
    const v12, 0x534d4f56

    .line 66
    .line 67
    .line 68
    if-eqz v9, :cond_b

    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v9, "onMoveFinished ("

    .line 78
    .line 79
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v7, v8}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v6, v3, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 97
    .line 98
    if-eqz v4, :cond_1

    .line 99
    .line 100
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    .line 102
    invoke-virtual {v6, v4, v12, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_1
    iget-object v4, v3, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v8, v3, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 118
    .line 119
    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const/16 v9, -0x64

    .line 124
    .line 125
    if-ne v2, v9, :cond_2

    .line 126
    .line 127
    const v2, 0x10404c3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const v9, 0x10404c2

    .line 135
    .line 136
    .line 137
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    const v2, 0x10404c0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const v8, 0x10404bf

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    :goto_0
    const-string v9, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 161
    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    if-eqz v12, :cond_5

    .line 169
    .line 170
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    new-instance v10, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_3

    .line 184
    .line 185
    invoke-virtual {v10, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_4

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_4
    const-string v9, "com.android.settings.deviceinfo.StorageWizardReady"

    .line 201
    .line 202
    invoke-virtual {v10, v15, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    :goto_1
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    const-string v12, "android.os.storage.extra.DISK_ID"

    .line 210
    .line 211
    invoke-virtual {v10, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    iget-object v3, v3, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    const/high16 v20, 0x14000000

    .line 225
    .line 226
    const/16 v21, 0x0

    .line 227
    .line 228
    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 229
    .line 230
    move-object/from16 v17, v3

    .line 231
    .line 232
    move-object/from16 v19, v10

    .line 233
    .line 234
    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    goto :goto_4

    .line 239
    :cond_5
    if-eqz v7, :cond_a

    .line 240
    .line 241
    new-instance v12, Landroid/content/Intent;

    .line 242
    .line 243
    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 247
    .line 248
    .line 249
    move-result v17

    .line 250
    if-eqz v17, :cond_6

    .line 251
    .line 252
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_6
    invoke-virtual {v3}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-eqz v9, :cond_7

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_7
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_9

    .line 271
    .line 272
    if-eq v9, v13, :cond_8

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_8
    const-string v9, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    .line 276
    .line 277
    invoke-virtual {v12, v15, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_9
    const-string v9, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    .line 282
    .line 283
    invoke-virtual {v12, v15, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    :goto_2
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-virtual {v12, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    iget-object v14, v3, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 302
    .line 303
    const/high16 v17, 0x14000000

    .line 304
    .line 305
    const/16 v18, 0x0

    .line 306
    .line 307
    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 308
    .line 309
    move-object/from16 v16, v12

    .line 310
    .line 311
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    goto :goto_4

    .line 316
    :cond_a
    :goto_3
    const/4 v12, 0x0

    .line 317
    :goto_4
    new-instance v3, Landroid/app/Notification$Builder;

    .line 318
    .line 319
    invoke-direct {v3, v4, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const v7, 0x108007a

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const v7, 0x106001c

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 353
    .line 354
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    const-string/jumbo v3, "sys"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    const/4 v3, -0x1

    .line 381
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    const/4 v3, 0x0

    .line 390
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-static {v4, v2, v3}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 395
    .line 396
    .line 397
    iget-object v3, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 404
    .line 405
    const v5, 0x534d4f56

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v3, v5, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 409
    .line 410
    .line 411
    :goto_5
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mPrevStatus:Landroid/util/ArrayMap;

    .line 414
    .line 415
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    goto/16 :goto_c

    .line 423
    .line 424
    :cond_b
    iget-object v9, v0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 425
    .line 426
    iget-object v9, v9, Lcom/android/systemui/usb/StorageNotification;->mPrevStatus:Landroid/util/ArrayMap;

    .line 427
    .line 428
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-eq v1, v2, :cond_14

    .line 443
    .line 444
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$12;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 445
    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string v9, "onMoveProgress ("

    .line 452
    .line 453
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    iget-object v1, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    iget-object v6, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 488
    .line 489
    if-nez v1, :cond_c

    .line 490
    .line 491
    iget-object v1, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 492
    .line 493
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    const v7, 0x10404c1

    .line 498
    .line 499
    .line 500
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    goto :goto_6

    .line 505
    :cond_c
    const v1, 0x10404c4

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    :goto_6
    const-wide/16 v7, 0x0

    .line 513
    .line 514
    cmp-long v7, v3, v7

    .line 515
    .line 516
    if-gez v7, :cond_d

    .line 517
    .line 518
    const/4 v3, 0x0

    .line 519
    goto :goto_7

    .line 520
    :cond_d
    invoke-static/range {p3 .. p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    :goto_7
    iget-object v4, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 525
    .line 526
    const-string v7, "android.content.pm.extra.MOVE_ID"

    .line 527
    .line 528
    if-eqz v4, :cond_10

    .line 529
    .line 530
    new-instance v4, Landroid/content/Intent;

    .line 531
    .line 532
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    if-eqz v8, :cond_e

    .line 540
    .line 541
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    .line 543
    .line 544
    const-string v8, "com.android.tv.settings.action.MOVE_APP"

    .line 545
    .line 546
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    if-eqz v8, :cond_f

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_f
    const-string v8, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    .line 558
    .line 559
    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    .line 561
    .line 562
    :goto_8
    iget v8, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 563
    .line 564
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    .line 566
    .line 567
    iget-object v7, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 568
    .line 569
    iget v8, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 570
    .line 571
    const/high16 v20, 0x14000000

    .line 572
    .line 573
    const/16 v21, 0x0

    .line 574
    .line 575
    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 576
    .line 577
    move-object/from16 v17, v7

    .line 578
    .line 579
    move/from16 v18, v8

    .line 580
    .line 581
    move-object/from16 v19, v4

    .line 582
    .line 583
    invoke-static/range {v17 .. v22}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 584
    .line 585
    .line 586
    move-result-object v12

    .line 587
    goto :goto_b

    .line 588
    :cond_10
    new-instance v4, Landroid/content/Intent;

    .line 589
    .line 590
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 594
    .line 595
    .line 596
    move-result v8

    .line 597
    if-eqz v8, :cond_11

    .line 598
    .line 599
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    .line 601
    .line 602
    const-string v8, "com.android.tv.settings.action.MIGRATE_STORAGE"

    .line 603
    .line 604
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    .line 606
    .line 607
    goto :goto_a

    .line 608
    :cond_11
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 609
    .line 610
    .line 611
    move-result v8

    .line 612
    if-eqz v8, :cond_12

    .line 613
    .line 614
    :goto_9
    const/4 v12, 0x0

    .line 615
    goto :goto_b

    .line 616
    :cond_12
    const-string v8, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    .line 617
    .line 618
    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    .line 620
    .line 621
    :goto_a
    iget v8, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 622
    .line 623
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    .line 625
    .line 626
    iget-object v7, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 627
    .line 628
    iget-object v8, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 631
    .line 632
    .line 633
    move-result-object v7

    .line 634
    if-eqz v7, :cond_13

    .line 635
    .line 636
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    .line 642
    .line 643
    :cond_13
    iget-object v14, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 644
    .line 645
    iget v15, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 646
    .line 647
    const/high16 v17, 0x14000000

    .line 648
    .line 649
    const/16 v18, 0x0

    .line 650
    .line 651
    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 652
    .line 653
    move-object/from16 v16, v4

    .line 654
    .line 655
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    :goto_b
    new-instance v4, Landroid/app/Notification$Builder;

    .line 660
    .line 661
    invoke-direct {v4, v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const v7, 0x108007a

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    const v7, 0x106001c

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 695
    .line 696
    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    const-string/jumbo v3, "progress"

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    const/4 v3, -0x1

    .line 723
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    const/16 v3, 0x64

    .line 728
    .line 729
    const/4 v4, 0x0

    .line 730
    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-static {v6, v1, v4}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 743
    .line 744
    .line 745
    iget-object v3, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 752
    .line 753
    iget-object v6, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 754
    .line 755
    const v7, 0x534d4f56

    .line 756
    .line 757
    .line 758
    invoke-virtual {v6, v3, v7, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 759
    .line 760
    .line 761
    iget v1, v5, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 762
    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mPrevStatus:Landroid/util/ArrayMap;

    .line 772
    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    :cond_14
    :goto_c
    return-void
.end method
