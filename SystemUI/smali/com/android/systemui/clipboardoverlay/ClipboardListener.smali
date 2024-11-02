.class public final Lcom/android/systemui/clipboardoverlay/ClipboardListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field static final EXTRA_SUPPRESS_OVERLAY:Ljava/lang/String; = "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

.field static final SHELL_PACKAGE:Ljava/lang/String; = "com.android.shell"


# instance fields
.field public final mClipboardManager:Landroid/content/ClipboardManager;

.field public final mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

.field public final mContext:Landroid/content/Context;

.field public mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

.field public final mSemClipboardToastProvider:Ljavax/inject/Provider;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/clipboardoverlay/ClipboardToast;Landroid/content/ClipboardManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/clipboardoverlay/ClipboardToast;",
            "Landroid/content/ClipboardManager;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToastProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 13
    .line 14
    return-void
.end method

.method public static shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    const-string p2, "com.android.shell"

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    if-eqz p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final showCopyToast(Landroid/content/ClipDescription;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToastProvider:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    .line 16
    .line 17
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    .line 18
    .line 19
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mSemClipboardToast:Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v2, "SemClipboardToastController"

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-wide v5, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->lastCopiedTime:J

    .line 31
    .line 32
    sub-long/2addr v3, v5

    .line 33
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    const-wide/16 v6, 0x1

    .line 36
    .line 37
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    cmp-long v3, v3, v5

    .line 42
    .line 43
    if-lez v3, :cond_14

    .line 44
    .line 45
    iget-object v3, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mRemoteServiceStateManager:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;

    .line 46
    .line 47
    iget-object v4, v3, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    .line 48
    .line 49
    const-string v5, "dexonpc_connection_state"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x3

    .line 62
    const/4 v8, 0x1

    .line 63
    if-ne v6, v7, :cond_1

    .line 64
    .line 65
    move v6, v8

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v6, 0x0

    .line 68
    :goto_0
    const-string/jumbo v7, "mcf_continuity_nearby_device_state"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_2

    .line 82
    .line 83
    move v10, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v10, 0x0

    .line 86
    :goto_1
    add-int/2addr v6, v10

    .line 87
    const-string/jumbo v10, "samsungflow_clipboard_sync_state"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    check-cast v11, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_3

    .line 101
    .line 102
    move v11, v8

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const/4 v11, 0x0

    .line 105
    :goto_2
    add-int/2addr v6, v11

    .line 106
    const-string v11, "ltw_clipboard_sync_state"

    .line 107
    .line 108
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    check-cast v12, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_4

    .line 119
    .line 120
    move v12, v8

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    const/4 v12, 0x0

    .line 123
    :goto_3
    add-int/2addr v6, v12

    .line 124
    const-string/jumbo v12, "multi_control_connection_state"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    move v4, v8

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    const/4 v4, 0x0

    .line 142
    :goto_4
    add-int/2addr v6, v4

    .line 143
    iget-object v4, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    if-lez v6, :cond_11

    .line 146
    .line 147
    if-nez p1, :cond_6

    .line 148
    .line 149
    goto/16 :goto_a

    .line 150
    .line 151
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    const-string v14, "com.samsung.android.honeyboard"

    .line 160
    .line 161
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_7

    .line 166
    .line 167
    const-string/jumbo v14, "mcf_continuity"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    if-eqz v14, :cond_7

    .line 175
    .line 176
    move v14, v8

    .line 177
    goto :goto_5

    .line 178
    :cond_7
    const/4 v14, 0x0

    .line 179
    :goto_5
    if-nez v14, :cond_e

    .line 180
    .line 181
    const-string v14, "com.sec.android.app.dexonpc"

    .line 182
    .line 183
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-eqz v14, :cond_9

    .line 188
    .line 189
    const-string/jumbo v14, "startDoPCopy"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-nez v14, :cond_8

    .line 197
    .line 198
    const-string/jumbo v14, "startDoPDrag"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v14

    .line 205
    if-eqz v14, :cond_9

    .line 206
    .line 207
    :cond_8
    move v14, v8

    .line 208
    goto :goto_6

    .line 209
    :cond_9
    const/4 v14, 0x0

    .line 210
    :goto_6
    if-nez v14, :cond_e

    .line 211
    .line 212
    const-string v14, "com.samsung.android.mdx"

    .line 213
    .line 214
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    if-eqz v14, :cond_a

    .line 219
    .line 220
    if-eqz v13, :cond_a

    .line 221
    .line 222
    const-string v14, "com.microsoft.appmanager"

    .line 223
    .line 224
    invoke-virtual {v13, v14}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    if-eqz v13, :cond_a

    .line 229
    .line 230
    move v13, v8

    .line 231
    goto :goto_7

    .line 232
    :cond_a
    const/4 v13, 0x0

    .line 233
    :goto_7
    if-nez v13, :cond_e

    .line 234
    .line 235
    const-string v13, "com.samsung.android.galaxycontinuity"

    .line 236
    .line 237
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    if-eqz v14, :cond_b

    .line 242
    .line 243
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-eqz v13, :cond_b

    .line 248
    .line 249
    move v13, v8

    .line 250
    goto :goto_8

    .line 251
    :cond_b
    const/4 v13, 0x0

    .line 252
    :goto_8
    if-nez v13, :cond_e

    .line 253
    .line 254
    const-string v13, "com.samsung.android.inputshare"

    .line 255
    .line 256
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v14

    .line 260
    if-eqz v14, :cond_c

    .line 261
    .line 262
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_c

    .line 267
    .line 268
    move v6, v8

    .line 269
    goto :goto_9

    .line 270
    :cond_c
    const/4 v6, 0x0

    .line 271
    :goto_9
    if-eqz v6, :cond_d

    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_d
    :goto_a
    const/4 v8, 0x0

    .line 275
    :cond_e
    :goto_b
    if-eqz v8, :cond_f

    .line 276
    .line 277
    goto :goto_c

    .line 278
    :cond_f
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_10

    .line 283
    .line 284
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    const v8, 0x7f130333

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    goto :goto_d

    .line 296
    :cond_10
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    const v8, 0x7f130332

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    goto :goto_d

    .line 308
    :cond_11
    :goto_c
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    const v8, 0x7f130328

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    :goto_d
    iget-object v8, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 320
    .line 321
    const-string v13, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 322
    .line 323
    invoke-virtual {v8, v13}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 324
    .line 325
    .line 326
    move-result-object v13

    .line 327
    array-length v14, v13

    .line 328
    const/4 v15, 0x0

    .line 329
    :goto_e
    if-ge v15, v14, :cond_13

    .line 330
    .line 331
    aget-object v16, v13, v15

    .line 332
    .line 333
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getState()I

    .line 334
    .line 335
    .line 336
    move-result v9

    .line 337
    move-object/from16 p1, v13

    .line 338
    .line 339
    const/4 v13, 0x2

    .line 340
    if-ne v9, v13, :cond_12

    .line 341
    .line 342
    move-object/from16 v8, v16

    .line 343
    .line 344
    const/4 v9, 0x0

    .line 345
    goto :goto_f

    .line 346
    :cond_12
    add-int/lit8 v15, v15, 0x1

    .line 347
    .line 348
    move-object/from16 v13, p1

    .line 349
    .line 350
    goto :goto_e

    .line 351
    :cond_13
    const/4 v9, 0x0

    .line 352
    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 353
    .line 354
    .line 355
    move-result-object v16

    .line 356
    move-object/from16 v8, v16

    .line 357
    .line 358
    :goto_f
    invoke-virtual {v4, v8}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    invoke-static {v8, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 367
    .line 368
    .line 369
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    const-wide/16 v8, 0x0

    .line 374
    .line 375
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v8, "Copy toast is shown by "

    .line 389
    .line 390
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .line 402
    .line 403
    goto :goto_10

    .line 404
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v6, "Unknown package is access to show toast : "

    .line 407
    .line 408
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string/jumbo v2, "remote service connection state. dop("

    .line 424
    .line 425
    .line 426
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mRemoteServiceStateMap:Ljava/util/HashMap;

    .line 430
    .line 431
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v4, "), mcf("

    .line 439
    .line 440
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v4, "), sf("

    .line 451
    .line 452
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v4, "), ltw("

    .line 463
    .line 464
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v4, "), mc("

    .line 475
    .line 476
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v2, ")"

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    const-string v2, "SemRemoteServiceStateManager"

    .line 496
    .line 497
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    iget-object v2, v3, Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager;->mClipboardClearHandler:Lcom/android/systemui/clipboardoverlay/SemRemoteServiceStateManager$ConnectionStateClearHandler;

    .line 509
    .line 510
    const/16 v3, 0x65

    .line 511
    .line 512
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    const-wide/16 v3, 0x2710

    .line 520
    .line 521
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 522
    .line 523
    .line 524
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 525
    .line 526
    .line 527
    move-result-wide v1

    .line 528
    iput-wide v1, v0, Lcom/android/systemui/clipboardoverlay/SemClipboardToastController;->lastCopiedTime:J

    .line 529
    .line 530
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
