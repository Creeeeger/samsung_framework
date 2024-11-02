.class public final Lcom/android/systemui/keyguardimage/WallpaperImageInjectCreator;
.super Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;)V
    .locals 8

    .line 1
    const-string v1, "WallpaperImageInjectCreator"

    .line 2
    .line 3
    new-instance v7, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    .line 4
    .line 5
    invoke-direct {v7}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/wallpaper/CoverWallpaper;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/wallpaper/WallpaperChangeObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaperEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    .line 6
    .line 7
    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperViewType()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "createImage, isLiveWallpaperEnabled = "

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, " , wallpaperViewType = "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    if-nez v0, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x7

    .line 45
    if-ne v2, v0, :cond_0

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_0
    const/16 v0, 0x8

    .line 49
    .line 50
    if-eq v2, v0, :cond_7

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x1

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lt v0, v1, :cond_1

    .line 86
    .line 87
    move v0, p1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x2

    .line 90
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v2, "isBitmapAndScreenOrientationSame, (w = "

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " , h = "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, ") orientation = "

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    if-ne p2, v0, :cond_2

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const/4 p1, 0x0

    .line 135
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_4
    const-string p0, "createImage failed"

    .line 139
    .line 140
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    return-object p0

    .line 145
    :cond_5
    :goto_2
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 146
    .line 147
    and-int/lit8 v1, v0, 0x3c

    .line 148
    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    or-int/lit8 v0, v0, 0x4

    .line 152
    .line 153
    :cond_6
    new-instance v1, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;

    .line 154
    .line 155
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-direct {v1, v3, v0, v2}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;-><init>(Landroid/content/Context;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/utils/SemWallpaperProperties;->isFixedOrientationLiveWallpaper()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->rotation:I

    .line 177
    .line 178
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0
.end method
