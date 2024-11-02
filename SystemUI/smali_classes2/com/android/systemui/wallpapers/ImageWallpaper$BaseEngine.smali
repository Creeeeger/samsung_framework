.class public Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpapers/IPlayableWallpaper;


# instance fields
.field public mAodState:I

.field public mIsGoingToSleep:Z

.field public mIsPauseByCommand:Z

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsGoingToSleep:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public isFixedOrientationWallpaper(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->convertDisplayIdToMode(ILandroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "ImageWallpaper"

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "isFixedOrientationWallpaper: incorrect mode. displayId = "

    .line 17
    .line 18
    invoke-static {p0, p1, v2}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    or-int/lit8 p1, v0, 0x1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/systemui/wallpapers/ImageWallpaper;->access$000(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    const-string v0, "isFixedOrientation"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const-string v0, "isFixedOrientationWallpaper: which="

    .line 44
    .line 45
    const-string v1, ", user="

    .line 46
    .line 47
    const-string v3, ", fixedOrientation="

    .line 48
    .line 49
    invoke-static {v0, p1, v1, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, p0, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return p0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v2, p2

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v4, "onCommand : "

    .line 9
    .line 10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "ImageWallpaper"

    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string v3, "android.wallpaper.wakingup"

    .line 26
    .line 27
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iput-boolean v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsGoingToSleep:Z

    .line 35
    .line 36
    iput v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    const-string v3, "android.wallpaper.goingtosleep"

    .line 41
    .line 42
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v6, 0x1

    .line 47
    const/16 v7, 0x64

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iput-boolean v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsGoingToSleep:Z

    .line 52
    .line 53
    invoke-interface {p0, v7}, Lcom/android/systemui/wallpapers/IPlayableWallpaper;->pause(I)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    const-string/jumbo v3, "samsung.android.wallpaper.pause"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iput-boolean v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 68
    .line 69
    iget-boolean v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsGoingToSleep:Z

    .line 70
    .line 71
    if-nez v3, :cond_10

    .line 72
    .line 73
    invoke-interface {p0, v5}, Lcom/android/systemui/wallpapers/IPlayableWallpaper;->pause(I)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_2
    const-string/jumbo v3, "samsung.android.wallpaper.resume"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    iput-boolean v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsPauseByCommand:Z

    .line 88
    .line 89
    iget-boolean v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mIsGoingToSleep:Z

    .line 90
    .line 91
    if-nez v3, :cond_10

    .line 92
    .line 93
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mPm:Landroid/os/PowerManager;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_10

    .line 102
    .line 103
    invoke-interface {p0}, Lcom/android/systemui/wallpapers/IPlayableWallpaper;->resume()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_3
    const-string v3, "android.wallpaper.aodstate"

    .line 109
    .line 110
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_10

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v5, "onCommand: Aod visibility state changed from ["

    .line 119
    .line 120
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v5, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 124
    .line 125
    const-string v8, "UNIDENTIFIED"

    .line 126
    .line 127
    const-string v9, "VISIBLE_WITH_WALLPAPER"

    .line 128
    .line 129
    const-string v10, "VISIBLE"

    .line 130
    .line 131
    const-string v11, "INVISIBLE"

    .line 132
    .line 133
    const-string v12, "NOT_INITIALIZED"

    .line 134
    .line 135
    const/4 v13, -0x1

    .line 136
    const/4 v14, 0x2

    .line 137
    if-eq v5, v13, :cond_7

    .line 138
    .line 139
    if-eqz v5, :cond_6

    .line 140
    .line 141
    if-eq v5, v6, :cond_5

    .line 142
    .line 143
    if-eq v5, v14, :cond_4

    .line 144
    .line 145
    move-object v5, v8

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    move-object v5, v9

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    move-object v5, v10

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    move-object v5, v11

    .line 152
    goto :goto_0

    .line 153
    :cond_7
    move-object v5, v12

    .line 154
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v5, "] to ["

    .line 158
    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    if-eq v2, v13, :cond_b

    .line 163
    .line 164
    if-eqz v2, :cond_a

    .line 165
    .line 166
    if-eq v2, v6, :cond_9

    .line 167
    .line 168
    if-eq v2, v14, :cond_8

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    move-object v8, v9

    .line 172
    goto :goto_1

    .line 173
    :cond_9
    move-object v8, v10

    .line 174
    goto :goto_1

    .line 175
    :cond_a
    move-object v8, v11

    .line 176
    goto :goto_1

    .line 177
    :cond_b
    move-object v8, v12

    .line 178
    :goto_1
    const-string v5, "]"

    .line 179
    .line 180
    invoke-static {v3, v8, v5, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 184
    .line 185
    iget-object v4, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 186
    .line 187
    if-nez v4, :cond_c

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_c
    invoke-static {v3}, Lcom/android/systemui/wallpapers/ImageWallpaper;->access$100(Lcom/android/systemui/wallpapers/ImageWallpaper;)Landroid/app/WallpaperManager;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 195
    .line 196
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 197
    .line 198
    check-cast v4, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 199
    .line 200
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const/4 v4, 0x3

    .line 209
    if-eq v3, v4, :cond_d

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 213
    .line 214
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 215
    .line 216
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_e

    .line 223
    .line 224
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    .line 230
    .line 231
    const-string v3, "WallpaperUtils"

    .line 232
    .line 233
    const-string v4, "isSeamlessAodOnLargeCover: false"

    .line 234
    .line 235
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_e
    :goto_2
    if-eq v2, v14, :cond_f

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_f
    invoke-interface {p0}, Lcom/android/systemui/wallpapers/IPlayableWallpaper;->resume()V

    .line 242
    .line 243
    .line 244
    invoke-interface {p0, v7}, Lcom/android/systemui/wallpapers/IPlayableWallpaper;->pause(I)V

    .line 245
    .line 246
    .line 247
    :goto_3
    iput v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->mAodState:I

    .line 248
    .line 249
    :cond_10
    :goto_4
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    return-object v0
.end method
