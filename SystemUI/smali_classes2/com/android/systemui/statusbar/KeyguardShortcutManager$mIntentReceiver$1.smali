.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_b

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "onReceive : "

    .line 13
    .line 14
    const-string v3, "KeyguardShortcutManager"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :sswitch_0
    const-string p2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :sswitch_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_7

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :sswitch_2
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_9

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :sswitch_3
    const-string p2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :sswitch_4
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "android.intent.extra.REPLACING"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_b

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "onReceive : Intent.EXTRA_REPLACING false, "

    .line 99
    .line 100
    invoke-static {p2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ge v4, v1, :cond_b

    .line 104
    .line 105
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 106
    .line 107
    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 108
    .line 109
    aget-object p2, p2, v4

    .line 110
    .line 111
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 115
    .line 116
    if-eqz p2, :cond_1

    .line 117
    .line 118
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 119
    .line 120
    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 121
    .line 122
    aget-object p2, p2, v4

    .line 123
    .line 124
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 128
    .line 129
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_1

    .line 141
    .line 142
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 143
    .line 144
    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$resetShortcut(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 145
    .line 146
    .line 147
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :sswitch_5
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :sswitch_6
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_2

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :sswitch_7
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_3

    .line 184
    .line 185
    goto/16 :goto_3

    .line 186
    .line 187
    :cond_3
    const-string/jumbo v0, "reason"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, ", with state "

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, ", updating shortcuts"

    .line 211
    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    const/4 p1, 0x3

    .line 223
    if-eq p2, p1, :cond_4

    .line 224
    .line 225
    const/4 p1, 0x5

    .line 226
    if-eq p2, p1, :cond_4

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcuts()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :sswitch_8
    const-string p2, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 238
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    if-nez p2, :cond_5

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 248
    .line 249
    iget-object v0, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    const-string v1, "activity"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/app/ActivityManager;

    .line 258
    .line 259
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    const/4 v1, 0x1

    .line 264
    if-ne v0, v1, :cond_6

    .line 265
    .line 266
    move v4, v1

    .line 267
    :cond_6
    iput-boolean v4, p2, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 270
    .line 271
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isLockTaskMode:Z

    .line 272
    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string p1, ", mIsLocksTaskModeLocked : "

    .line 282
    .line 283
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :sswitch_9
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_7

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    :goto_1
    if-ge v4, v1, :cond_b

    .line 320
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 322
    .line 323
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 324
    .line 325
    aget-object v0, v0, v4

    .line 326
    .line 327
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 331
    .line 332
    if-eqz v0, :cond_8

    .line 333
    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 335
    .line 336
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 337
    .line 338
    aget-object v0, v0, v4

    .line 339
    .line 340
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 344
    .line 345
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_8

    .line 357
    .line 358
    const-string v0, ", starting update of shortcut "

    .line 359
    .line 360
    invoke-static {v2, p1, v0, p2, v3}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 364
    .line 365
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 366
    .line 367
    aget-object v5, v5, v4

    .line 368
    .line 369
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 373
    .line 374
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    .line 375
    .line 376
    invoke-direct {v6, v5, v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 377
    .line 378
    .line 379
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 380
    .line 381
    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 382
    .line 383
    .line 384
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :sswitch_a
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 388
    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_9

    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_9
    const-string v0, "android.intent.extra.changed_package_list"

    .line 397
    .line 398
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    :goto_2
    if-ge v4, v1, :cond_b

    .line 403
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 405
    .line 406
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 407
    .line 408
    aget-object v0, v0, v4

    .line 409
    .line 410
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 414
    .line 415
    if-eqz v0, :cond_a

    .line 416
    .line 417
    if-eqz p2, :cond_a

    .line 418
    .line 419
    array-length v0, p2

    .line 420
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 429
    .line 430
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 431
    .line 432
    aget-object v5, v5, v4

    .line 433
    .line 434
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 438
    .line 439
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_a

    .line 451
    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 453
    .line 454
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 455
    .line 456
    aget-object v0, v0, v4

    .line 457
    .line 458
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 462
    .line 463
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    const-string v5, ", suspended shortcut "

    .line 471
    .line 472
    invoke-static {v2, p1, v5, v0, v3}, Lcom/android/systemui/keyguard/CustomizationProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$mIntentReceiver$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 476
    .line 477
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 478
    .line 479
    aget-object v5, v5, v4

    .line 480
    .line 481
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 485
    .line 486
    new-instance v6, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;

    .line 487
    .line 488
    invoke-direct {v6, v5, v0, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V

    .line 489
    .line 490
    .line 491
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 492
    .line 493
    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    .line 495
    .line 496
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 497
    .line 498
    goto :goto_2

    .line 499
    :cond_b
    :goto_3
    return-void

    .line 500
    nop

    .line 501
    :sswitch_data_0
    .sparse-switch
        -0x3bb3e592 -> :sswitch_a
        -0x304ed112 -> :sswitch_9
        -0xd655f1f -> :sswitch_8
        -0x8cbe44f -> :sswitch_7
        -0x122164c -> :sswitch_6
        0xa480416 -> :sswitch_5
        0x1f50b9c2 -> :sswitch_4
        0x4356ea54 -> :sswitch_3
        0x4cef8b35 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x798ccea7 -> :sswitch_0
    .end sparse-switch
.end method
