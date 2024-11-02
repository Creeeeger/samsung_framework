.class public Lcom/android/systemui/bixby2/util/ActivityLauncher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final BIXBYCLIENT_TISKID:Ljava/lang/String; = "bixbyClient_taskId"

.field private static final PACKAGENAME_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final PACKAGENAME_TMAP:Ljava/lang/String; = "com.skt.tmap.ku"

.field private static final SEM_LAUNCH_ON_DEX:I = -0x1

.field private static final SEM_LAUNCH_ON_FOCUSED_STACK:I = -0x2710

.field private static final SHOW_NAVIGATION_FOR_SUBSCREEN:Ljava/lang/String; = "show_navigation_for_subscreen"

.field private static final TAG:Ljava/lang/String; = "ActivityLauncher"


# instance fields
.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/app/KeyguardManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 9
    .line 10
    return-void
.end method

.method private isFolderClosed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 4
    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method


# virtual methods
.method public startActivityInBixby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "ActivityLauncher"

    .line 8
    .line 9
    new-instance v5, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    move-object/from16 v6, p3

    .line 17
    .line 18
    invoke-direct {v0, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v0, "from-bixby"

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    iget-object v0, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 39
    .line 40
    const/4 v9, 0x2

    .line 41
    const/4 v10, 0x0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v11, 0x4

    .line 57
    if-ne v0, v11, :cond_0

    .line 58
    .line 59
    iget-object v0, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 60
    .line 61
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    move v11, v9

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move v11, v10

    .line 72
    :goto_0
    if-nez p4, :cond_2

    .line 73
    .line 74
    if-ne v11, v9, :cond_1

    .line 75
    .line 76
    const/4 v0, -0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/16 v0, -0x2710

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move/from16 v0, p4

    .line 82
    .line 83
    :goto_1
    :try_start_0
    const-class v12, Landroid/content/Intent;

    .line 84
    .line 85
    const-string/jumbo v13, "semSetLaunchOverTargetTask"

    .line 86
    .line 87
    .line 88
    new-array v14, v9, [Ljava/lang/Class;

    .line 89
    .line 90
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v15, v14, v10

    .line 93
    .line 94
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    aput-object v15, v14, v8

    .line 97
    .line 98
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    new-array v9, v9, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    aput-object v0, v9, v10

    .line 109
    .line 110
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    aput-object v0, v9, v8

    .line 113
    .line 114
    invoke-virtual {v12, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :goto_2
    const-string v9, "android.intent.category.LAUNCHER"

    .line 127
    .line 128
    const-string v12, "android.intent.action.MAIN"

    .line 129
    .line 130
    const/high16 v0, 0x10200000

    .line 131
    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    const-string v13, "com.sec.android.app.camera"

    .line 135
    .line 136
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_6

    .line 141
    .line 142
    sget-boolean v7, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 143
    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_3

    .line 151
    .line 152
    move v11, v8

    .line 153
    :cond_3
    iget-object v7, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 154
    .line 155
    if-nez v7, :cond_4

    .line 156
    .line 157
    const-string v7, "keyguard"

    .line 158
    .line 159
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    check-cast v7, Landroid/app/KeyguardManager;

    .line 164
    .line 165
    iput-object v7, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 166
    .line 167
    :cond_4
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    iget-object v7, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 174
    .line 175
    if-eqz v7, :cond_5

    .line 176
    .line 177
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_5

    .line 182
    .line 183
    const v0, 0x10008000

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    const-string v0, "isSecure"

    .line 190
    .line 191
    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_5
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0, v3, v7}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    .line 207
    .line 208
    .line 209
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    goto :goto_3

    .line 211
    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move v0, v10

    .line 220
    :goto_3
    const-string v7, "isPackageEnabledForCoverLauncher = "

    .line 221
    .line 222
    invoke-static {v7, v0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-boolean v7, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 226
    .line 227
    if-eqz v7, :cond_8

    .line 228
    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_8

    .line 234
    .line 235
    if-eqz v0, :cond_8

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string/jumbo v7, "show_navigation_for_subscreen"

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_7

    .line 249
    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    .line 256
    .line 257
    :cond_7
    move v11, v8

    .line 258
    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 259
    .line 260
    const-string v0, "com.skt.tmap.ku"

    .line 261
    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_9

    .line 267
    .line 268
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    :cond_9
    if-eqz p5, :cond_a

    .line 275
    .line 276
    const-string/jumbo v0, "start activity in cover screen"

    .line 277
    .line 278
    .line 279
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move v11, v8

    .line 283
    :cond_a
    invoke-virtual {v6, v11}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 284
    .line 285
    .line 286
    :try_start_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 287
    .line 288
    if-eqz v0, :cond_b

    .line 289
    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/bixby2/util/ActivityLauncher;->isFolderClosed()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_b

    .line 295
    .line 296
    if-nez v11, :cond_b

    .line 297
    .line 298
    new-instance v0, Landroid/content/Intent;

    .line 299
    .line 300
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string/jumbo v3, "showCoverToast"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    const-string v3, "ignoreKeyguardState"

    .line 310
    .line 311
    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    const/4 v3, 0x0

    .line 315
    const/high16 v6, 0xc000000

    .line 316
    .line 317
    const/4 v7, 0x0

    .line 318
    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 319
    .line 320
    move-object/from16 v2, p1

    .line 321
    .line 322
    move-object v4, v5

    .line 323
    move v5, v6

    .line 324
    move-object v6, v7

    .line 325
    move-object v7, v9

    .line 326
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iget-object v1, v1, Lcom/android/systemui/bixby2/util/ActivityLauncher;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 331
    .line 332
    invoke-virtual {v1, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_b
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :catch_2
    move v8, v10

    .line 345
    :goto_5
    return v8
.end method
