.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/controls/models/player/MediaData;IIILjava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$1:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$6:I

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$7:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v14, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 4
    .line 5
    iget-object v6, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$1:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 6
    .line 7
    iget v12, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$2:I

    .line 8
    .line 9
    iget v13, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$3:I

    .line 10
    .line 11
    iget v2, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$4:I

    .line 12
    .line 13
    iget-object v3, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$5:Ljava/lang/String;

    .line 14
    .line 15
    iget v4, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$6:I

    .line 16
    .line 17
    iget-boolean v8, v0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda12;->f$7:Z

    .line 18
    .line 19
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v6, Lcom/android/systemui/media/controls/models/player/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 23
    .line 24
    iget-object v1, v6, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v7, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    if-eqz v0, :cond_6

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    if-eq v10, v9, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    const/4 v11, 0x5

    .line 42
    if-ne v10, v11, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v10, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    move v10, v9

    .line 48
    :goto_1
    if-eqz v10, :cond_6

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    new-instance v11, Lcom/android/systemui/monet/ColorScheme;

    .line 59
    .line 60
    sget-object v15, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    .line 61
    .line 62
    invoke-direct {v11, v10, v9, v15}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    .line 63
    .line 64
    .line 65
    new-instance v15, Lcom/android/systemui/monet/ColorScheme;

    .line 66
    .line 67
    sget-object v5, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    .line 68
    .line 69
    invoke-direct {v15, v10, v9, v5}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-gt v5, v12, :cond_4

    .line 85
    .line 86
    if-le v10, v12, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-le v5, v10, :cond_3

    .line 104
    .line 105
    sub-int/2addr v5, v10

    .line 106
    div-int/lit8 v5, v5, 0x2

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    invoke-static {v0, v9, v5, v10, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const/4 v9, 0x0

    .line 115
    sub-int/2addr v10, v5

    .line 116
    div-int/lit8 v10, v10, 0x2

    .line 117
    .line 118
    invoke-static {v0, v10, v9, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const/4 v9, 0x1

    .line 129
    invoke-static {v0, v12, v13, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {v5, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    .line 135
    .line 136
    move-object v0, v5

    .line 137
    :cond_4
    :goto_3
    iget-boolean v5, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 138
    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    iget-object v5, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_5

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    iput-boolean v5, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mIsArtworkBound:Z

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    const/4 v5, 0x0

    .line 154
    :goto_4
    iput-object v1, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 155
    .line 156
    move-object v7, v0

    .line 157
    move-object v10, v7

    .line 158
    move-object v5, v11

    .line 159
    const/4 v9, 0x1

    .line 160
    goto :goto_7

    .line 161
    :cond_6
    const/4 v5, 0x0

    .line 162
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 163
    .line 164
    invoke-direct {v9, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 165
    .line 166
    .line 167
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    new-instance v11, Lcom/android/systemui/monet/ColorScheme;

    .line 176
    .line 177
    invoke-static {v7}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v15, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    invoke-direct {v11, v0, v5, v15}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .line 186
    .line 187
    :try_start_1
    new-instance v0, Lcom/android/systemui/monet/ColorScheme;

    .line 188
    .line 189
    invoke-static {v7}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    sget-object v10, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    .line 194
    .line 195
    invoke-direct {v0, v15, v5, v10}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .line 197
    .line 198
    move-object v15, v0

    .line 199
    goto :goto_6

    .line 200
    :catch_0
    move-exception v0

    .line 201
    goto :goto_5

    .line 202
    :catch_1
    move-exception v0

    .line 203
    const/4 v7, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v10, "Cannot find icon for package "

    .line 208
    .line 209
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v5, "MediaControlPanel"

    .line 220
    .line 221
    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    const/4 v15, 0x0

    .line 225
    :goto_6
    move-object v10, v7

    .line 226
    move-object v7, v9

    .line 227
    move-object v5, v11

    .line 228
    const/4 v9, 0x0

    .line 229
    :goto_7
    if-eqz v5, :cond_7

    .line 230
    .line 231
    iget-object v0, v15, Lcom/android/systemui/monet/ColorScheme;->accent1:Lcom/android/systemui/monet/TonalPalette;

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    move v11, v0

    .line 238
    goto :goto_8

    .line 239
    :cond_7
    const/4 v11, 0x0

    .line 240
    :goto_8
    new-instance v15, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;

    .line 241
    .line 242
    move-object v0, v15

    .line 243
    move-object v1, v14

    .line 244
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;ILcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/media/controls/models/player/MediaData;Landroid/graphics/drawable/Drawable;ZZLandroid/graphics/drawable/Drawable;III)V

    .line 245
    .line 246
    .line 247
    iget-object v0, v14, Lcom/android/systemui/media/SecMediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 248
    .line 249
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 250
    .line 251
    invoke-virtual {v0, v15}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method
