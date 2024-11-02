.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "doSetAsWallpaper: which = "

    .line 11
    .line 12
    const-string v2, "KeyguardWallpaperPreviewActivity"

    .line 13
    .line 14
    const-string v3, "doSetAsWallpaper()"

    .line 15
    .line 16
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput-boolean v3, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 21
    .line 22
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 23
    .line 24
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string v4, "isWallpaperChangeAllowed"

    .line 29
    .line 30
    iget-object v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v8, v4

    .line 40
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    .line 49
    .line 50
    iget-object v7, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    const-string v7, "false"

    .line 59
    .line 60
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v4, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    const v2, 0x7f1309f6

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_a

    .line 98
    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_2
    :goto_1
    iget v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 105
    .line 106
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    iget v5, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 111
    .line 112
    const v8, 0x7f1309f5

    .line 113
    .line 114
    .line 115
    const-string/jumbo v9, "white_lockscreen_navigationbar"

    .line 116
    .line 117
    .line 118
    const-string/jumbo v10, "white_lockscreen_statusbar"

    .line 119
    .line 120
    .line 121
    const-string/jumbo v11, "white_lockscreen_wallpaper"

    .line 122
    .line 123
    .line 124
    const-string v12, "lockscreen_wallpaper_sub"

    .line 125
    .line 126
    const-string v13, "lockscreen_wallpaper"

    .line 127
    .line 128
    const-string/jumbo v14, "sub_display_lockscreen_wallpaper_transparency"

    .line 129
    .line 130
    .line 131
    const-string v15, "lockscreen_wallpaper_transparent"

    .line 132
    .line 133
    if-eq v5, v3, :cond_7

    .line 134
    .line 135
    const/4 v7, 0x4

    .line 136
    if-eq v5, v7, :cond_3

    .line 137
    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :cond_3
    if-eqz v4, :cond_5

    .line 141
    .line 142
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    const/4 v7, 0x3

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v7, v6

    .line 149
    :goto_2
    invoke-virtual {v1, v7, v14}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6, v3, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    iget-object v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v4, :cond_6

    .line 159
    .line 160
    const/4 v7, 0x3

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    move v7, v6

    .line 163
    :goto_3
    invoke-virtual {v1, v7, v15}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v6, v3, v13}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :goto_4
    invoke-virtual {v1, v3, v6, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3, v6, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3, v6, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 184
    .line 185
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 196
    .line 197
    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 198
    .line 199
    iget v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 200
    .line 201
    invoke-virtual {v0, v2, v4, v3}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :goto_5
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-static {v0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_7
    if-eqz v4, :cond_9

    .line 220
    .line 221
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v0, :cond_8

    .line 224
    .line 225
    const/4 v7, 0x3

    .line 226
    goto :goto_6

    .line 227
    :cond_8
    move v7, v6

    .line 228
    :goto_6
    invoke-virtual {v1, v7, v14}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v6, v3, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_9
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 236
    .line 237
    if-eqz v0, :cond_a

    .line 238
    .line 239
    const/4 v7, 0x3

    .line 240
    goto :goto_7

    .line 241
    :cond_a
    move v7, v6

    .line 242
    :goto_7
    invoke-virtual {v1, v7, v15}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v6, v3, v13}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_8
    invoke-virtual {v1, v3, v6, v11}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v3, v6, v10}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3, v6, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(IILjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 258
    .line 259
    iget-object v2, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 260
    .line 261
    iget v4, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 262
    .line 263
    invoke-virtual {v0, v2, v4, v3}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;IZ)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    invoke-static {v0, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    .line 274
    .line 275
    :goto_9
    iget-object v0, v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_b

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 284
    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_b
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showProgressDialog()V

    .line 288
    .line 289
    .line 290
    new-instance v0, Landroid/os/Handler;

    .line 291
    .line 292
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;

    .line 300
    .line 301
    const/4 v3, 0x2

    .line 302
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V

    .line 303
    .line 304
    .line 305
    const-wide/16 v3, 0x5dc

    .line 306
    .line 307
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    .line 309
    .line 310
    :goto_a
    return-void
.end method
