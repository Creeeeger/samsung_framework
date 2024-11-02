.class public final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 6
    .line 7
    check-cast v2, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 8
    .line 9
    iget-boolean v2, v2, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    .line 21
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_14

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/permission/PermissionGroupUsage;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const v8, -0x440149cd

    .line 69
    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    if-eq v7, v8, :cond_5

    .line 73
    .line 74
    const v8, 0x31640343

    .line 75
    .line 76
    .line 77
    if-eq v7, v8, :cond_3

    .line 78
    .line 79
    const v8, 0x5e404d38

    .line 80
    .line 81
    .line 82
    if-eq v7, v8, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string v7, "android.permission-group.MICROPHONE"

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-object v6, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string v7, "android.permission-group.LOCATION"

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    sget-object v6, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const-string v7, "android.permission-group.CAMERA"

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    sget-object v6, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    move-object v6, v9

    .line 121
    :goto_2
    if-eqz v6, :cond_a

    .line 122
    .line 123
    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 124
    .line 125
    iget-object v8, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 126
    .line 127
    if-eq v6, v7, :cond_7

    .line 128
    .line 129
    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 130
    .line 131
    if-ne v6, v7, :cond_8

    .line 132
    .line 133
    :cond_7
    iget-object v7, v8, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 134
    .line 135
    iget-boolean v7, v7, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 136
    .line 137
    if-eqz v7, :cond_8

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    sget-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 141
    .line 142
    if-ne v6, v7, :cond_9

    .line 143
    .line 144
    iget-object v7, v8, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 145
    .line 146
    iget-boolean v7, v7, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 147
    .line 148
    if-eqz v7, :cond_9

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    move-object v6, v9

    .line 152
    :goto_3
    move-object v11, v6

    .line 153
    goto :goto_4

    .line 154
    :cond_a
    move-object v11, v9

    .line 155
    :goto_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    const/4 v10, 0x0

    .line 164
    if-eqz v7, :cond_d

    .line 165
    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    move-object v12, v7

    .line 171
    check-cast v12, Landroid/content/pm/UserInfo;

    .line 172
    .line 173
    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-ne v12, v13, :cond_c

    .line 184
    .line 185
    const/4 v12, 0x1

    .line 186
    goto :goto_5

    .line 187
    :cond_c
    move v12, v10

    .line 188
    :goto_5
    if-eqz v12, :cond_b

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_d
    move-object v7, v9

    .line 192
    :goto_6
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 193
    .line 194
    if-nez v7, :cond_e

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_13

    .line 201
    .line 202
    :cond_e
    if-eqz v11, :cond_13

    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    iget-object v9, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    .line 209
    .line 210
    if-eqz v6, :cond_f

    .line 211
    .line 212
    const-string v6, ""

    .line 213
    .line 214
    :goto_7
    move-object v14, v6

    .line 215
    goto :goto_8

    .line 216
    :cond_f
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    :try_start_0
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    invoke-virtual {v9, v6, v10, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 233
    .line 234
    .line 235
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_7

    .line 237
    :catch_0
    const-string v12, "Label not found for: "

    .line 238
    .line 239
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    const-string v13, "PrivacyDialogController"

    .line 244
    .line 245
    invoke-static {v13, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :goto_8
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    new-instance v6, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 258
    .line 259
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    .line 264
    .line 265
    .line 266
    move-result-object v15

    .line 267
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    .line 268
    .line 269
    .line 270
    move-result-object v16

    .line 271
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    .line 272
    .line 273
    .line 274
    move-result-object v17

    .line 275
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v18

    .line 279
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    .line 280
    .line 281
    .line 282
    move-result v20

    .line 283
    if-eqz v7, :cond_10

    .line 284
    .line 285
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    move/from16 v21, v7

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_10
    move/from16 v21, v10

    .line 293
    .line 294
    :goto_9
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 295
    .line 296
    .line 297
    move-result v22

    .line 298
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v23

    .line 302
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v24

    .line 310
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    .line 311
    .line 312
    .line 313
    move-result-object v25

    .line 314
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    if-eqz v5, :cond_11

    .line 319
    .line 320
    const/4 v10, 0x1

    .line 321
    :cond_11
    if-eqz v25, :cond_12

    .line 322
    .line 323
    if-eqz v10, :cond_12

    .line 324
    .line 325
    new-instance v5, Landroid/content/Intent;

    .line 326
    .line 327
    const-string v10, "android.intent.action.MANAGE_PERMISSION_USAGE"

    .line 328
    .line 329
    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    const-string v10, "android.intent.extra.PERMISSION_GROUP_NAME"

    .line 336
    .line 337
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    filled-new-array {v8}, [Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    const-string v10, "android.intent.extra.ATTRIBUTION_TAGS"

    .line 353
    .line 354
    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    const-string v8, "android.intent.extra.SHOWING_ATTRIBUTION"

    .line 358
    .line 359
    const/4 v10, 0x1

    .line 360
    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    const-wide/16 v24, 0x0

    .line 364
    .line 365
    invoke-static/range {v24 .. v25}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-virtual {v9, v5, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    if-eqz v8, :cond_12

    .line 374
    .line 375
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 376
    .line 377
    if-eqz v9, :cond_12

    .line 378
    .line 379
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 380
    .line 381
    const-string v10, "android.permission.START_VIEW_PERMISSION_USAGE"

    .line 382
    .line 383
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v9

    .line 387
    if-eqz v9, :cond_12

    .line 388
    .line 389
    new-instance v9, Landroid/content/ComponentName;

    .line 390
    .line 391
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 392
    .line 393
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 394
    .line 395
    invoke-direct {v9, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_12
    new-instance v5, Landroid/content/Intent;

    .line 403
    .line 404
    const-string v8, "android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 405
    .line 406
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v8, "android.intent.extra.PACKAGE_NAME"

    .line 410
    .line 411
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    .line 413
    .line 414
    const-string v7, "android.intent.extra.USER"

    .line 415
    .line 416
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    .line 422
    .line 423
    :goto_a
    move-object/from16 v24, v5

    .line 424
    .line 425
    move-object v10, v6

    .line 426
    invoke-direct/range {v10 .. v24}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;-><init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/CharSequence;Landroid/content/Intent;)V

    .line 427
    .line 428
    .line 429
    move-object v9, v6

    .line 430
    :cond_13
    if-eqz v9, :cond_0

    .line 431
    .line 432
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 438
    .line 439
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 440
    .line 441
    new-instance v3, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;

    .line 442
    .line 443
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    .line 444
    .line 445
    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;Landroid/content/Context;)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 449
    .line 450
    .line 451
    return-void
.end method
