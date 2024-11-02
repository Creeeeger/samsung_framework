.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    check-cast p1, Landroid/content/ComponentName;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 8
    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 16
    .line 17
    const-string/jumbo v0, "updateShortcut : "

    .line 18
    .line 19
    .line 20
    const-string v2, "KeyguardShortcutManager"

    .line 21
    .line 22
    if-eqz p1, :cond_a

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getSuspended(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Landroid/content/Intent;

    .line 43
    .line 44
    const-string v5, "android.intent.action.MAIN"

    .line 45
    .line 46
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 53
    .line 54
    iget-object v5, v5, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 55
    .line 56
    const/16 v6, 0x81

    .line 57
    .line 58
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v6, v5

    .line 73
    :goto_0
    if-eqz v6, :cond_9

    .line 74
    .line 75
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 76
    .line 77
    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    const/4 v8, 0x1

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    move v7, v8

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v7

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v10, "isAppEnabled() Error: "

    .line 96
    .line 97
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v7, ", Component: "

    .line 104
    .line 105
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move v7, v1

    .line 119
    :goto_1
    if-nez v7, :cond_3

    .line 120
    .line 121
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 122
    .line 123
    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 124
    .line 125
    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 126
    .line 127
    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 128
    .line 129
    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    const/16 v9, 0x4d

    .line 134
    .line 135
    if-ne v7, v9, :cond_2

    .line 136
    .line 137
    move v7, v8

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v7, v1

    .line 140
    :goto_2
    if-nez v7, :cond_3

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_3
    iget-boolean v0, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 145
    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eq v0, v8, :cond_4

    .line 160
    .line 161
    const-string p0, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    .line 162
    .line 163
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 171
    .line 172
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 173
    .line 174
    aget-object v7, v0, v4

    .line 175
    .line 176
    if-eqz v7, :cond_5

    .line 177
    .line 178
    aput-object v5, v0, v4

    .line 179
    .line 180
    :cond_5
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    const-string v4, "com.samsung.keyguard.SHOW_WHEN_LOCKED_SHORTCUT"

    .line 185
    .line 186
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    move v4, v1

    .line 192
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 193
    .line 194
    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 195
    .line 196
    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 197
    .line 198
    aget-object v7, v7, v9

    .line 199
    .line 200
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 206
    .line 207
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isShortcutPermission(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_7

    .line 215
    .line 216
    move v4, v8

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    move v4, v1

    .line 219
    :goto_4
    iput-boolean v4, v7, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 220
    .line 221
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 222
    .line 223
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 224
    .line 225
    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 226
    .line 227
    aget-object v4, v4, v7

    .line 228
    .line 229
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 233
    .line 234
    if-eqz v4, :cond_8

    .line 235
    .line 236
    if-eqz v0, :cond_8

    .line 237
    .line 238
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 239
    .line 240
    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 241
    .line 242
    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 243
    .line 244
    aget-object v4, v4, v7

    .line 245
    .line 246
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    const-string v7, "com.samsung.keyguard.LAUNCH_INSECURE_MAIN_SHORTCUT"

    .line 250
    .line 251
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    iput-boolean v0, v4, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->launchInsecureMain:Z

    .line 256
    .line 257
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 260
    .line 261
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 262
    .line 263
    aget-object v0, v0, v4

    .line 264
    .line 265
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 274
    .line 275
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 276
    .line 277
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 278
    .line 279
    aget-object v0, v0, v3

    .line 280
    .line 281
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    iput-boolean v8, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->enabled:Z

    .line 285
    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 289
    .line 290
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 291
    .line 292
    aget-object v0, v0, v3

    .line 293
    .line 294
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 298
    .line 299
    invoke-static {v3, v6, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 306
    .line 307
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 308
    .line 309
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 310
    .line 311
    aget-object v0, v0, v1

    .line 312
    .line 313
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 317
    .line 318
    invoke-static {v1, v6, v8}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getShortcutIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 323
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 327
    .line 328
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 329
    .line 330
    aget-object v0, v0, v1

    .line 331
    .line 332
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iput-object p1, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 336
    .line 337
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 338
    .line 339
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 340
    .line 341
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 342
    .line 343
    aget-object p1, p1, v0

    .line 344
    .line 345
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    iput-object v5, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 351
    .line 352
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 353
    .line 354
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 355
    .line 356
    aget-object p1, p1, v0

    .line 357
    .line 358
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 364
    .line 365
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 377
    .line 378
    iget p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 379
    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 383
    .line 384
    aget-object v0, v0, p1

    .line 385
    .line 386
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 390
    .line 391
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string/jumbo v3, "updateShortcut th : "

    .line 401
    .line 402
    .line 403
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p1, " class : "

    .line 410
    .line 411
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 425
    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getQuickAffordanceConfigList()Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move v1, v8

    .line 430
    goto :goto_7

    .line 431
    :cond_9
    :goto_5
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 432
    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string p0, " activityInfo is null, resolveInfo is : "

    .line 442
    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string p0, ",  return FALSE"

    .line 450
    .line 451
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    goto :goto_7

    .line 462
    :cond_a
    :goto_6
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcut$1$1;->$th:I

    .line 463
    .line 464
    const-string p1, " is disabled from settings"

    .line 465
    .line 466
    invoke-static {v0, p0, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :goto_7
    return v1
.end method
