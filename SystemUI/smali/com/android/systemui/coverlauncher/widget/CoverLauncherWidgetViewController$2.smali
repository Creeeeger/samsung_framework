.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

.field public final synthetic val$appWidgetIds:[I

.field public final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;[ILandroid/appwidget/AppWidgetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetIds:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetIds:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const v4, 0x7f0a0448

    .line 7
    .line 8
    .line 9
    if-ge v3, v1, :cond_15

    .line 10
    .line 11
    aget v5, v0, v3

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 14
    .line 15
    iget-object v6, v6, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v7, "CoverLauncherWidgetViewController"

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    iget-object v6, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 30
    .line 31
    iget-object v6, v6, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const-string/jumbo v4, "skip update cover appWidget"

    .line 51
    .line 52
    .line 53
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_7

    .line 57
    .line 58
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 59
    .line 60
    iget-object v6, v6, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 72
    .line 73
    iget-object v6, v6, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const/4 v8, 0x1

    .line 76
    invoke-static {v6, v8}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->getAppListFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    iget-object v9, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 85
    .line 86
    iget-object v10, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    const/4 v11, -0x1

    .line 96
    const/4 v12, 0x2

    .line 97
    const/4 v13, 0x4

    .line 98
    if-nez v9, :cond_2

    .line 99
    .line 100
    move v9, v11

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v10, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    iget v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 107
    .line 108
    invoke-virtual {v10, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 113
    .line 114
    if-ne v9, v13, :cond_3

    .line 115
    .line 116
    if-ne v10, v12, :cond_3

    .line 117
    .line 118
    move v9, v8

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    if-ne v9, v12, :cond_4

    .line 121
    .line 122
    if-ne v10, v12, :cond_4

    .line 123
    .line 124
    move v9, v12

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    const/4 v9, 0x0

    .line 127
    :goto_2
    if-ne v9, v11, :cond_5

    .line 128
    .line 129
    const-string v4, "invalid appWidgetId : appWidgetInfo is null id="

    .line 130
    .line 131
    invoke-static {v4, v5, v7}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 135
    .line 136
    iget-object v4, v4, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string/jumbo v10, "update cover appWidget "

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v10, ", type="

    .line 161
    .line 162
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const-string/jumbo v10, "semEnableSelectZeroOnLastFocusTab"

    .line 181
    .line 182
    .line 183
    iget-object v2, v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-virtual {v11}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-ne v9, v12, :cond_9

    .line 198
    .line 199
    if-eqz v11, :cond_7

    .line 200
    .line 201
    if-nez v6, :cond_6

    .line 202
    .line 203
    const v11, 0x7f0d0533

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    const v11, 0x7f0d052d

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    if-nez v6, :cond_8

    .line 212
    .line 213
    const v11, 0x7f0d0532

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    const v11, 0x7f0d052c

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_9
    if-ne v9, v8, :cond_d

    .line 222
    .line 223
    if-eqz v11, :cond_b

    .line 224
    .line 225
    if-nez v6, :cond_a

    .line 226
    .line 227
    const v11, 0x7f0d0535

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_a
    const v11, 0x7f0d0530

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_b
    if-nez v6, :cond_c

    .line 236
    .line 237
    const v11, 0x7f0d0534

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_c
    const v11, 0x7f0d052f

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_d
    if-nez v6, :cond_e

    .line 246
    .line 247
    const v11, 0x7f0d0531

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_e
    const/16 v11, 0x8

    .line 252
    .line 253
    if-le v6, v11, :cond_f

    .line 254
    .line 255
    const v11, 0x7f0d052b

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_f
    const v11, 0x7f0d052e

    .line 260
    .line 261
    .line 262
    :goto_3
    new-instance v12, Landroid/widget/RemoteViews;

    .line 263
    .line 264
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    invoke-direct {v12, v13, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    const-string v11, "appWidgetId"

    .line 272
    .line 273
    if-lez v6, :cond_13

    .line 274
    .line 275
    new-instance v13, Landroid/content/Intent;

    .line 276
    .line 277
    sget-object v14, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sRemoteViewsClassArray:[Ljava/lang/Class;

    .line 278
    .line 279
    aget-object v14, v14, v9

    .line 280
    .line 281
    invoke-direct {v13, v2, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v13, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    const-string/jumbo v14, "widgetType"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v12, v4, v13}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 305
    .line 306
    .line 307
    new-instance v13, Landroid/content/Intent;

    .line 308
    .line 309
    sget-object v14, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sWidgetClassArray:[Ljava/lang/Class;

    .line 310
    .line 311
    aget-object v14, v14, v9

    .line 312
    .line 313
    invoke-direct {v13, v2, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .line 315
    .line 316
    const-string v14, "action_launch_app"

    .line 317
    .line 318
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v13, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    mul-int/lit8 v11, v5, 0x64

    .line 325
    .line 326
    const/high16 v14, 0x12000000

    .line 327
    .line 328
    invoke-static {v2, v11, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v12, v4, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x2

    .line 336
    if-ne v9, v2, :cond_10

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_10
    const/4 v2, 0x4

    .line 340
    if-ne v9, v8, :cond_11

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_11
    if-ge v6, v2, :cond_12

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_12
    move v6, v2

    .line 347
    :goto_4
    move v2, v6

    .line 348
    :goto_5
    const-string/jumbo v6, "setNumColumns"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v12, v4, v6, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    :try_start_0
    const-class v2, Landroid/widget/GridView;

    .line 355
    .line 356
    new-array v6, v8, [Ljava/lang/Class;

    .line 357
    .line 358
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 359
    .line 360
    const/4 v11, 0x0

    .line 361
    aput-object v9, v6, v11

    .line 362
    .line 363
    invoke-virtual {v2, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12, v4, v10, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catch_0
    move-exception v2

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v2, " semEnableSelectZeroOnLastFocusTab"

    .line 380
    .line 381
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_13
    if-nez v6, :cond_14

    .line 393
    .line 394
    new-instance v4, Landroid/content/Intent;

    .line 395
    .line 396
    const-class v6, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetHelper;

    .line 397
    .line 398
    invoke-direct {v4, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .line 400
    .line 401
    const/high16 v6, 0x34000000

    .line 402
    .line 403
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    .line 408
    .line 409
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    const/4 v7, 0x0

    .line 414
    invoke-virtual {v6, v7}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 415
    .line 416
    .line 417
    mul-int/lit8 v7, v5, 0x64

    .line 418
    .line 419
    const/high16 v9, 0xa000000

    .line 420
    .line 421
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-static {v2, v7, v4, v9, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    const v4, 0x7f0a08e5

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 433
    .line 434
    .line 435
    :cond_14
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 436
    .line 437
    invoke-virtual {v2, v5, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 438
    .line 439
    .line 440
    iget-object v2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->this$0:Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 441
    .line 442
    iget-object v2, v2, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->appWidgetUpdating:Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 449
    .line 450
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move v2, v8

    .line 454
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :cond_15
    if-eqz v2, :cond_16

    .line 459
    .line 460
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 461
    .line 462
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;->val$appWidgetIds:[I

    .line 463
    .line 464
    invoke-virtual {v0, p0, v4}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 465
    .line 466
    .line 467
    :cond_16
    return-void
.end method
