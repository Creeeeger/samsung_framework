.class public final Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginWallpaperManager;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field public mIsSwitchingToSub:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mScreenType:I

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 20
    .line 21
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "## PluginWallpaperManagerImpl ##, "

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "PluginWallpaperManagerImpl"

    .line 41
    .line 42
    invoke-virtual {p4, p2, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-boolean p1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 46
    .line 47
    const/4 p3, 0x1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 60
    .line 61
    invoke-direct {p1, p5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    if-eqz p4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-boolean p1, p1, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    const-string p1, "PluginLockWallpaperManager, virtual display: mScreenType = PluginLock.SCREEN_SUB"

    .line 79
    .line 80
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iput p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getLidState()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    const-string p1, "PluginLockWallpaperManager: mScreenType = PluginLock.SCREEN_SUB"

    .line 97
    .line 98
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iput p3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 109
    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getSubFbeWallpaperType()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {p0, p3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-instance p4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string p5, "fillFbeWallpaperData, fbeSubType: "

    .line 131
    .line 132
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p5, ", fbeSubPath: "

    .line 139
    .line 140
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    iget-object p5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 151
    .line 152
    invoke-virtual {p5, p2, p4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    const/4 p1, -0x2

    .line 158
    if-eq v2, p1, :cond_4

    .line 159
    .line 160
    if-eqz v4, :cond_4

    .line 161
    .line 162
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 163
    .line 164
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 165
    .line 166
    iget-object p1, p1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 167
    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    const/4 v3, 0x0

    .line 172
    const/4 v5, 0x0

    .line 173
    move-object v0, p1

    .line 174
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    iget-object p1, p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 182
    .line 183
    sget p2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 184
    .line 185
    invoke-static {p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    check-cast p1, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 200
    .line 201
    if-eqz p1, :cond_4

    .line 202
    .line 203
    iput-object p0, p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 204
    .line 205
    :cond_4
    return-void
.end method

.method public static getFbeFile(ILjava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "/data/user_de/0/com.android.systemui/files/fresh_pack/"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/"

    .line 9
    .line 10
    :goto_0
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    array-length v0, p0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    array-length v0, p0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, v0, :cond_2

    .line 31
    .line 32
    aget-object v2, p0, v1

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method


# virtual methods
.method public final getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 3

    .line 1
    const-string p0, "color"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 36
    .line 37
    new-instance v1, Ljava/io/InputStreamReader;

    .line 38
    .line 39
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    .line 46
    .line 47
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    .line 63
    .line 64
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_3
    move-exception v0

    .line 84
    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_3
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    invoke-static {p0}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 106
    return-object p0

    .line 107
    :catch_1
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public final getFbeWallpaper(IZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "fbe"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "PluginWallpaperManagerImpl"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v2, "getFbeWallpaper screen: "

    .line 12
    .line 13
    const-string v3, ", path: "

    .line 14
    .line 15
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    xor-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_0
    const-string p0, "getFbeWallpaper null"

    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public final getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, "icrops"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 16
    .line 17
    .line 18
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    .line 22
    .line 23
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 28
    .line 29
    .line 30
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 31
    .line 32
    .line 33
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception v1

    .line 43
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 47
    :catchall_2
    move-exception v1

    .line 48
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_3
    move-exception p0

    .line 53
    :try_start_a
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 57
    :catchall_4
    move-exception p0

    .line 58
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_5
    move-exception v0

    .line 63
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_3
    const-string p0, "getFbeWallpaperIntelligentCrop: iCrops = "

    .line 72
    .line 73
    const-string v0, "PluginWallpaperManagerImpl"

    .line 74
    .line 75
    invoke-static {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public final getFbeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "fbe"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method public final getHomeWallpaperPath(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return-object p0
.end method

.method public final getSubFbeWallpaperType()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, -0x2

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-string p0, "fbe"

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1, p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v2, "_"

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    aget-object p0, p0, v1

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, -0x1

    .line 54
    sparse-switch v2, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    :goto_0
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :sswitch_0
    const-string/jumbo v1, "video"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_1
    const-string v2, "image"

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :sswitch_2
    const-string v1, "gif"

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v1, 0x0

    .line 90
    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :pswitch_0
    const/16 p0, 0x17

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_1
    const/16 p0, 0x15

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_2
    const/16 p0, 0x16

    .line 101
    .line 102
    return p0

    .line 103
    :cond_4
    :goto_2
    return v0

    .line 104
    nop

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x18fc4 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final getWallpaperIndex()I
    .locals 9

    .line 1
    const-string v0, "PluginWallpaperManagerImpl"

    .line 2
    .line 3
    const-string v1, "getWallpaperIndex: strIndex = "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isCustomPackApplied()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, -0x1

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {v2, v7}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {v2, v7}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    move v2, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v2, v5

    .line 52
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    .line 54
    move v2, v4

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v2, v5

    .line 57
    :goto_1
    if-eqz v2, :cond_8

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getWallpaperPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    return v6

    .line 66
    :cond_3
    :try_start_0
    const-string v7, "/"

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    add-int/2addr v7, v4

    .line 73
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v7, "."

    .line 78
    .line 79
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-lez v7, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_4
    const-string v7, "[^0-9]"

    .line 90
    .line 91
    const-string v8, ""

    .line 92
    .line 93
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v7, "^(0|[1-9][0-9]*)$"

    .line 98
    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_8

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 110
    .line 111
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_6

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {v3, p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_5

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    invoke-virtual {v3, p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_5

    .line 140
    .line 141
    move p0, v4

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move p0, v5

    .line 144
    :goto_2
    if-eqz p0, :cond_6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    move v4, v5

    .line 148
    :goto_3
    if-eqz v4, :cond_7

    .line 149
    .line 150
    add-int/lit8 v7, v7, -0x1

    .line 151
    .line 152
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", index = "

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    return v7

    .line 176
    :catch_0
    move-exception p0

    .line 177
    const-string v1, "getWallpaperIndex, "

    .line 178
    .line 179
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    return v6
.end method

.method public final getWallpaperIntelligentCrop(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 25
    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mIntelligentCrop:Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final getWallpaperPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final getWallpaperUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final isCustomPackApplied()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isDynamicLockEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isDynamicWallpaperEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDynamicWallpaperEnabled(I)Z
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    .line 7
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    .line 8
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 9
    iget v0, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "isDynamicWallpaper() required:"

    const-string v4, ", final: "

    const-string v5, ", ret:"

    .line 10
    invoke-static {v2, p1, v4, p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "PluginLockWallpaper"

    .line 11
    invoke-static {p0, v0, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final isFbeRequired(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    rem-int/lit8 v0, v0, 0xa

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/16 p1, 0x7530

    .line 24
    .line 25
    if-ne p0, p1, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final isFbeWallpaperAvailable(I)Z
    .locals 7

    .line 1
    const-string v0, "fbe"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v2

    .line 26
    :goto_0
    const-string v4, "isFbeWallpaperAvailable: screen = "

    .line 27
    .line 28
    const-string v5, ", flag = "

    .line 29
    .line 30
    const-string v6, ", file = "

    .line 31
    .line 32
    invoke-static {v4, p1, v5, v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v0, "null"

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "PluginWallpaperManagerImpl"

    .line 53
    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v1, v2

    .line 72
    :goto_2
    return v1
.end method

.method public final isFbeWallpaperVideo(I)Z
    .locals 2

    .line 1
    const-string v0, "fbe"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "_"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x1

    .line 32
    aget-object p1, p1, v0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string/jumbo v1, "video"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public final isMultiPackApplied(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCustomPack(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isServiceWallpaper(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    move p0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p0, v1

    .line 32
    :goto_0
    if-eqz p0, :cond_1

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_1
    return v1
.end method

.method public final isVideoWallpaperEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicLockEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p0, v0, :cond_0

    .line 41
    .line 42
    move p0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p0, v1

    .line 45
    :goto_0
    if-eqz p0, :cond_1

    .line 46
    .line 47
    move v1, v2

    .line 48
    :cond_1
    return v1
.end method

.method public final onLockWallpaperChanged(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string v4, "notifyWallpaperChanged, enabled:"

    .line 19
    .line 20
    const-string v5, ", mIsSwitchingToSub: "

    .line 21
    .line 22
    invoke-static {v4, v1, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-boolean v5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 27
    .line 28
    const-string v6, ", isOwner: "

    .line 29
    .line 30
    const-string v7, ", screen:"

    .line 31
    .line 32
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "PluginWallpaperManagerImpl"

    .line 43
    .line 44
    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 48
    .line 49
    if-eqz v4, :cond_a

    .line 50
    .line 51
    if-eqz v1, :cond_a

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 54
    .line 55
    if-nez v1, :cond_a

    .line 56
    .line 57
    if-eqz v3, :cond_a

    .line 58
    .line 59
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 60
    .line 61
    const/4 v3, -0x1

    .line 62
    const/4 v6, 0x1

    .line 63
    const/4 v7, 0x0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const/4 v8, 0x2

    .line 67
    if-ne p1, v8, :cond_0

    .line 68
    .line 69
    iput-boolean v6, v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iput-boolean v7, v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 76
    .line 77
    invoke-virtual {v4, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setRecoverRequestedScreen(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v9, "recover() screenType:"

    .line 83
    .line 84
    .line 85
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget v9, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 89
    .line 90
    const-string v10, "PluginLockWallpaper"

    .line 91
    .line 92
    invoke-static {v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    iget-boolean v1, v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    move v1, v6

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move v1, v7

    .line 104
    :goto_1
    iget-object v8, v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperDataList:Ljava/util/List;

    .line 105
    .line 106
    const/4 v9, -0x2

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    check-cast v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_4

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 126
    .line 127
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->resetAll()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->getScreenType()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    check-cast v8, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;

    .line 142
    .line 143
    iput v9, v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    .line 144
    .line 145
    :cond_4
    invoke-static {}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->isCloneDisplayRequired()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 152
    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    iget-boolean v1, v4, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWholeRecoverRequired:Z

    .line 156
    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    move v6, v7

    .line 161
    :goto_3
    if-eqz v6, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    sget v1, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 165
    .line 166
    iget-object v6, v4, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 167
    .line 168
    if-eqz v6, :cond_8

    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    if-eqz v6, :cond_8

    .line 175
    .line 176
    invoke-virtual {v6, v1, v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperDynamic(II)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperSource(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setWallpaperType(II)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v4, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_7
    :goto_4
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setWallpaperBackupValue()V

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_5
    invoke-virtual {v4, v7}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 198
    .line 199
    if-eqz p0, :cond_a

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    const-string/jumbo v1, "recoverItem() type:1"

    .line 205
    .line 206
    .line 207
    const-string v3, "PluginLockMediatorImpl"

    .line 208
    .line 209
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    const-string/jumbo v0, "recover()"

    .line 217
    .line 218
    .line 219
    const-string v1, "PluginLockSecure"

    .line 220
    .line 221
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    const-string/jumbo v0, "reset()"

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_9
    :try_start_0
    const-string v0, "onLockWallpaperChanged called"

    .line 231
    .line 232
    invoke-virtual {v2, v5, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v0, "onLockWallpaperChanged, "

    .line 243
    .line 244
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {v2, v5, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_a
    :goto_6
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitchComplete, userId: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 17
    .line 18
    const-string v1, "PluginWallpaperManagerImpl"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 25
    .line 26
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitching, userId: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 17
    .line 18
    const-string v1, "PluginWallpaperManagerImpl"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 25
    .line 26
    return-void
.end method

.method public final onWallpaperConsumed(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isDynamicLockEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string/jumbo v4, "onWallpaperConsumed, enabled:"

    .line 19
    .line 20
    .line 21
    const-string v5, ", mIsSwitchingToSub: "

    .line 22
    .line 23
    invoke-static {v4, v1, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-boolean v5, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 28
    .line 29
    const-string v6, ", isOwner: "

    .line 30
    .line 31
    const-string v7, ", screen:"

    .line 32
    .line 33
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ", updateColor:"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "PluginWallpaperManagerImpl"

    .line 52
    .line 53
    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mIsSwitchingToSub:Z

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 69
    .line 70
    if-eqz p0, :cond_0

    .line 71
    .line 72
    :try_start_0
    const-string/jumbo v0, "onWallpaperConsumed called"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperConsumed(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo p2, "onWallpaperConsumed, "

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v2, v5, p1}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_0
    :goto_0
    return-void
.end method
