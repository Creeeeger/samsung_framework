.class public Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public appName:Ljava/lang/String;

.field public badgeBitmap:Landroid/graphics/Bitmap;

.field public bubbleBitmap:Landroid/graphics/Bitmap;

.field public dotColor:I

.field public dotPath:Landroid/graphics/Path;

.field public expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

.field public imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

.field public shortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;Lcom/android/wm/shell/bubbles/Bubble;Z)Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;
    .locals 9

    .line 1
    const-string v0, "Bubbles"

    .line 2
    .line 3
    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez p6, :cond_3

    .line 11
    .line 12
    iget-object p6, p5, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 13
    .line 14
    if-eqz p6, :cond_0

    .line 15
    .line 16
    iget-object p6, p5, Lcom/android/wm/shell/bubbles/Bubble;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 17
    .line 18
    if-nez p6, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object p6, p5, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBarExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 21
    .line 22
    if-eqz p6, :cond_2

    .line 23
    .line 24
    :cond_1
    move p6, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move p6, v3

    .line 27
    :goto_0
    if-nez p6, :cond_3

    .line 28
    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p6

    .line 33
    const v4, 0x7f0d0067

    .line 34
    .line 35
    .line 36
    invoke-virtual {p6, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 41
    .line 42
    iput-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->imageView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/bubbles/BadgedImageView;->initialize(Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    .line 49
    .line 50
    .line 51
    const v4, 0x7f0d005f

    .line 52
    .line 53
    .line 54
    invoke-virtual {p6, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p6

    .line 58
    check-cast p6, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 59
    .line 60
    iput-object p6, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 61
    .line 62
    invoke-virtual {p6, p1, p2, v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Z)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p5, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iput-object p1, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 70
    .line 71
    :cond_4
    iget-object p1, p5, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 p2, 0x0

    .line 82
    :try_start_0
    iget-object p6, p5, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    const v4, 0xc2200

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    .line 90
    move-result-object p6

    .line 91
    if-eqz p6, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, p6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object p6

    .line 97
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p6

    .line 101
    iput-object p6, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->appName:Ljava/lang/String;

    .line 102
    .line 103
    :cond_5
    iget-object p6, p5, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object p6

    .line 109
    iget-object v4, p5, Lcom/android/wm/shell/bubbles/Bubble;->mUser:Landroid/os/UserHandle;

    .line 110
    .line 111
    invoke-virtual {p1, p6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->shortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 116
    .line 117
    iget-object v5, p5, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x6

    .line 123
    const/4 v7, 0x4

    .line 124
    if-eqz v4, :cond_6

    .line 125
    .line 126
    const-string v5, "launcherapps"

    .line 127
    .line 128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroid/content/pm/LauncherApps;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 143
    .line 144
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    goto :goto_1

    .line 149
    :cond_6
    if-eqz v5, :cond_9

    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eq v4, v7, :cond_7

    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v4, v6, :cond_8

    .line 162
    .line 163
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {p0, v4, v8, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 172
    .line 173
    .line 174
    :cond_8
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    goto :goto_1

    .line 179
    :cond_9
    move-object v4, p2

    .line 180
    :goto_1
    if-nez v4, :cond_a

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_a
    move-object p6, v4

    .line 184
    :goto_2
    invoke-virtual {p4, p1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget-object v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 189
    .line 190
    iput-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->badgeBitmap:Landroid/graphics/Bitmap;

    .line 191
    .line 192
    iget-boolean v4, p5, Lcom/android/wm/shell/bubbles/Bubble;->mIsImportantConversation:Z

    .line 193
    .line 194
    if-eqz v4, :cond_b

    .line 195
    .line 196
    invoke-virtual {p4, p1}, Lcom/android/wm/shell/bubbles/BubbleBadgeIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/BitmapInfo;

    .line 197
    .line 198
    .line 199
    :cond_b
    new-array p1, v2, [F

    .line 200
    .line 201
    invoke-virtual {p3, p6, v3}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;->getCircledBubble(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    invoke-virtual {p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/android/launcher3/icons/BitmapInfo;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    iget-object p3, p3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 210
    .line 211
    iput-object p3, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->bubbleBitmap:Landroid/graphics/Bitmap;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    const p4, 0x104034e

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-static {p3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    new-instance p4, Landroid/graphics/Matrix;

    .line 229
    .line 230
    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 231
    .line 232
    .line 233
    aget p1, p1, v3

    .line 234
    .line 235
    const/high16 p6, 0x42480000    # 50.0f

    .line 236
    .line 237
    invoke-virtual {p4, p1, p1, p6, p6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 241
    .line 242
    .line 243
    iput-object p3, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotPath:Landroid/graphics/Path;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const p3, 0x7f060550

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iput p1, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->dotColor:I

    .line 257
    .line 258
    iget-object p1, p5, Lcom/android/wm/shell/bubbles/Bubble;->mFlyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 259
    .line 260
    iput-object p1, v1, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$BubbleViewInfo;->flyoutMessage:Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;

    .line 261
    .line 262
    if-eqz p1, :cond_f

    .line 263
    .line 264
    iget-object p3, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderIcon:Landroid/graphics/drawable/Icon;

    .line 265
    .line 266
    sget p4, Lcom/android/wm/shell/bubbles/BubbleViewInfoTask;->$r8$clinit:I

    .line 267
    .line 268
    if-nez p3, :cond_c

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_c
    :try_start_1
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 272
    .line 273
    .line 274
    move-result p4

    .line 275
    if-eq p4, v7, :cond_d

    .line 276
    .line 277
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 278
    .line 279
    .line 280
    move-result p4

    .line 281
    if-ne p4, v6, :cond_e

    .line 282
    .line 283
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p4

    .line 287
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 288
    .line 289
    .line 290
    move-result-object p5

    .line 291
    invoke-virtual {p0, p4, p5, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 292
    .line 293
    .line 294
    :cond_e
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 295
    .line 296
    .line 297
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    goto :goto_3

    .line 299
    :catch_0
    move-exception p0

    .line 300
    new-instance p3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string p4, "loadSenderAvatar failed: "

    .line 303
    .line 304
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :goto_3
    iput-object p2, p1, Lcom/android/wm/shell/bubbles/Bubble$FlyoutMessage;->senderAvatar:Landroid/graphics/drawable/Drawable;

    .line 322
    .line 323
    :cond_f
    return-object v1

    .line 324
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string p1, "Unable to find package: "

    .line 327
    .line 328
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p5, Lcom/android/wm/shell/bubbles/Bubble;->mPackageName:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    return-object p2
.end method
