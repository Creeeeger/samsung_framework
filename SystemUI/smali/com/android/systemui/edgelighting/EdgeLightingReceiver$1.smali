.class public final Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-string/jumbo v2, "silent_remove_list"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "silent_add_list"

    .line 11
    .line 12
    .line 13
    const-string v4, "edge_lighting_settings"

    .line 14
    .line 15
    const-string v5, "EdgeLightingSettingManager"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const-string/jumbo v7, "pkg_name"

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_a

    .line 22
    .line 23
    const/4 v8, 0x1

    .line 24
    if-eq v1, v8, :cond_5

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_4

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, -0x2

    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x5

    .line 37
    if-eq v1, p1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "edge_lighting_show_condition"

    .line 50
    .line 51
    invoke-static {p1, v1, v8, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    .line 55
    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    .line 57
    .line 58
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 59
    .line 60
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-class v2, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    .line 64
    .line 65
    const-string v3, "com.samsung.android.app.edgelighting.PACKAGE_ADDED"

    .line 66
    .line 67
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    .line 71
    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    .line 73
    .line 74
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-class v2, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    .line 80
    .line 81
    const-string v3, "com.samsung.android.app.edgelighting.PACKAGE_REMOVED"

    .line 82
    .line 83
    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    .line 87
    .line 88
    new-instance p1, Landroid/content/IntentFilter;

    .line 89
    .line 90
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 91
    .line 92
    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-class v1, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    .line 96
    .line 97
    const-string v2, "com.samsung.android.app.edgelighting.PACKAGE_REPLACED"

    .line 98
    .line 99
    invoke-static {p0, v0, v2, p1, v1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->-$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v0, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 111
    .line 112
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_e

    .line 131
    .line 132
    const-string p1, "com.samsung.android.edgelightingeffectunit"

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_e

    .line 139
    .line 140
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1, p0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    xor-int/lit8 v6, p0, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :goto_0
    if-eqz v6, :cond_e

    .line 158
    .line 159
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string/jumbo p1, "preload/"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_e

    .line 179
    .line 180
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const-string p0, "edge_lighting_style_type_str"

    .line 202
    .line 203
    invoke-static {p1, p0, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    goto/16 :goto_4

    .line 207
    .line 208
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    if-eqz p0, :cond_e

    .line 217
    .line 218
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->replaceSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :catch_1
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    const-string p0, "EdgeLightingReceiver"

    .line 232
    .line 233
    const-string p1, "PACKAGE_REPLACED error"

    .line 234
    .line 235
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto/16 :goto_4

    .line 239
    .line 240
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    if-eqz p0, :cond_e

    .line 249
    .line 250
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    const-string/jumbo v9, "removeSilentInstalledPackage : on, packageName = "

    .line 274
    .line 275
    .line 276
    if-eqz v7, :cond_6

    .line 277
    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string p0, " return own package"

    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_6
    const-string/jumbo v7, "update_package_name"

    .line 301
    .line 302
    .line 303
    invoke-interface {v4, v7, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    .line 305
    .line 306
    iget-object v7, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    .line 307
    .line 308
    invoke-virtual {v7, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    const-string/jumbo v11, "update_package_enable"

    .line 313
    .line 314
    .line 315
    if-eqz v10, :cond_7

    .line 316
    .line 317
    invoke-interface {v4, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_7
    invoke-interface {v4, v11, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    .line 323
    .line 324
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-static {v8}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    if-eqz v8, :cond_8

    .line 333
    .line 334
    const-string v1, " AllApplication = "

    .line 335
    .line 336
    invoke-static {v9, p0, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    iget-boolean v2, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_9

    .line 357
    .line 358
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v0, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 366
    .line 367
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_8
    const-string/jumbo p1, "removeSilentInstalledPackage : off, packageName = "

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_9

    .line 386
    .line 387
    new-instance p1, Ljava/util/HashSet;

    .line 388
    .line 389
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    invoke-static {v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v1, v2, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 403
    .line 404
    .line 405
    new-instance p1, Ljava/util/HashSet;

    .line 406
    .line 407
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    invoke-static {v1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v1, v3, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 421
    .line 422
    .line 423
    :cond_9
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    if-eqz p0, :cond_e

    .line 437
    .line 438
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-static {v1, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    if-eqz v1, :cond_d

    .line 454
    .line 455
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-nez v1, :cond_b

    .line 460
    .line 461
    goto :goto_3

    .line 462
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_c

    .line 471
    .line 472
    const-string v1, "addSilentInstalledPackage : on, packageName = "

    .line 473
    .line 474
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v0, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    .line 489
    .line 490
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    .line 491
    .line 492
    .line 493
    goto :goto_4

    .line 494
    :cond_c
    const-string p1, "addSilentInstalledPackage : off, packageName = "

    .line 495
    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    new-instance v0, Ljava/util/HashSet;

    .line 508
    .line 509
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    invoke-static {p1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-static {p1, v3, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 523
    .line 524
    .line 525
    new-instance v0, Ljava/util/HashSet;

    .line 526
    .line 527
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-static {p1, v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 541
    .line 542
    .line 543
    goto :goto_4

    .line 544
    :cond_d
    :goto_3
    const-string p1, "addSilentInstalledPackage : no support package "

    .line 545
    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_e
    :goto_4
    return-void
.end method
