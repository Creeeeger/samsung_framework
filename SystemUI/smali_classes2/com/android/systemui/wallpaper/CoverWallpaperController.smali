.class public final Lcom/android/systemui/wallpaper/CoverWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/wallpaper/CoverWallpaper;
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# static fields
.field public static sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

.field public mFirstWallpaperType:I

.field public mIsFbeColorSet:Z

.field public final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field public final mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mWallpaperConsumer:Ljava/util/function/Consumer;

.field public mWallpaperId:I

.field public final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/pluginlock/PluginLockUtils;Landroid/app/IWallpaperManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p10, -0x2

    .line 5
    iput p10, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 6
    .line 7
    sget-object p10, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->NOT_REQUIRED:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 8
    .line 9
    iput-object p10, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 10
    .line 11
    new-instance p10, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;

    .line 12
    .line 13
    invoke-direct {p10, p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/CoverWallpaperController;)V

    .line 14
    .line 15
    .line 16
    iput-object p10, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 17
    .line 18
    sput-object p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 19
    .line 20
    const/4 p10, 0x0

    .line 21
    iput-boolean p10, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 26
    .line 27
    move-object v0, p4

    .line 28
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 31
    .line 32
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iput-object p0, v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 39
    .line 40
    :cond_0
    iput-object p5, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 45
    .line 46
    iput-object p7, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 47
    .line 48
    new-instance p3, Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 49
    .line 50
    invoke-direct {p3, p1, p8, p9, p4}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;)V

    .line 51
    .line 52
    .line 53
    iput-object p3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 64
    .line 65
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 66
    .line 67
    const-string p2, "CoverWallpaperController"

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    if-eqz p6, :cond_1

    .line 72
    .line 73
    :try_start_0
    invoke-interface {p6, p0}, Landroid/app/IWallpaperManager;->setCoverWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p4, "System dead?"

    .line 81
    .line 82
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUPPORT_SUIT_CASE:Z

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 100
    .line 101
    iget-object p3, p1, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object p4

    .line 107
    const-string p5, "accessory_cover_uri"

    .line 108
    .line 109
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object p5

    .line 113
    iget-object p1, p1, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    .line 114
    .line 115
    invoke-virtual {p4, p5, p10, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    const-string/jumbo p5, "user_setup_complete"

    .line 123
    .line 124
    .line 125
    invoke-static {p5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object p5

    .line 129
    invoke-virtual {p4, p5, p10, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const-string p4, "dls_state"

    .line 137
    .line 138
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p3, p4, p10, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSmartCardController:Lcom/android/systemui/wallpaper/accessory/SmartCardController;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 151
    .line 152
    invoke-virtual {p9, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    invoke-virtual {p1, p3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    const/4 p3, 0x3

    .line 166
    if-ne p1, p3, :cond_3

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-static {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->enableDlsIfDisabled(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_3

    .line 175
    .line 176
    const-string p0, "Failed to enable DLS."

    .line 177
    .line 178
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_3
    return-void
.end method

.method public static getCoverMode()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const-string v0, "CoverWallpaperController"

    .line 14
    .line 15
    const-string v1, "getCoverMode, abnormal state "

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    const/16 v0, 0x10

    .line 21
    .line 22
    :goto_1
    return v0
.end method


# virtual methods
.method public final getCoverWhich()I
    .locals 1

    .line 1
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x11

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/16 p0, 0x21

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string p0, "CoverWallpaperController"

    .line 16
    .line 17
    const-string v0, "getCoverWhich, abnormal state "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    :goto_0
    return p0
.end method

.method public final getWallpaperBitmap(Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    .line 9
    .line 10
    const-string v2, "CoverWallpaperController"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mIsFbeColorSet:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 19
    .line 20
    check-cast v3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v0, v3, v4}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "getWallpaperBitmap: "

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "getWallpaperBitmap: SemWallpaperColors for FBE was already set."

    .line 58
    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 63
    .line 64
    xor-int/2addr p1, v1

    .line 65
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 66
    .line 67
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaper(IZ)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 73
    .line 74
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 81
    .line 82
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 85
    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v2, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 105
    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    iget-object v3, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 111
    .line 112
    const-string v4, "getWallpaperBitmap() path:"

    .line 113
    .line 114
    const-string v5, "PluginHomeWallpaper"

    .line 115
    .line 116
    invoke-static {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    if-ne v0, v1, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    move v1, v4

    .line 128
    :goto_1
    invoke-static {p0, v3, p1, v1}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    if-eqz v2, :cond_5

    .line 134
    .line 135
    if-ne v0, v1, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move v1, v4

    .line 139
    :goto_2
    invoke-static {p0, v2, p1, v1}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    const-string p0, "getWallpaperBitmap() no available data"

    .line 145
    .line 146
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_6
    const/4 p0, 0x0

    .line 150
    :goto_3
    return-object p0
.end method

.method public final getWallpaperIntelligentCrop()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperIntelligentCrop(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 26
    .line 27
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast p0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mIntelligentCrops:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    :goto_0
    return-object p0
.end method

.method public final getWallpaperPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeWallpaperPath(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getHomeWallpaperPath(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final getWallpaperRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    const-string/jumbo v0, "rect"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getFbeFile(ILjava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 31
    .line 32
    .line 33
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    .line 48
    .line 49
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 50
    .line 51
    .line 52
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception v3

    .line 57
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception v2

    .line 62
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 66
    :catchall_2
    move-exception v2

    .line 67
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_3
    move-exception p0

    .line 72
    :try_start_a
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 76
    :catchall_4
    move-exception p0

    .line 77
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_5
    move-exception v0

    .line 82
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "getFbeWallpaperRect, rect: "

    .line 93
    .line 94
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v0, "PluginWallpaperManagerImpl"

    .line 105
    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 111
    .line 112
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 119
    .line 120
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 123
    .line 124
    if-eqz p0, :cond_1

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast p0, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 143
    .line 144
    if-eqz p0, :cond_1

    .line 145
    .line 146
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    .line 147
    .line 148
    :cond_1
    return-object v1
.end method

.method public final getWallpaperType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->getSubFbeWallpaperType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 25
    .line 26
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, -0x2

    .line 38
    :goto_0
    return p0
.end method

.method public final isCoverWallpaperRequired()Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CoverWallpaperController"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "isCoverWallpaperRequired: currentUser = "

    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 17
    .line 18
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    sget v3, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_0
    const/4 v4, 0x1

    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    move v3, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v2

    .line 39
    :goto_1
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v5, 0xa

    .line 48
    .line 49
    if-le v0, v5, :cond_3

    .line 50
    .line 51
    move v0, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v0, v2

    .line 54
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    if-eqz p0, :cond_5

    .line 61
    .line 62
    :cond_4
    move v2, v4

    .line 63
    :cond_5
    const-string v4, "isCoverWallpaperRequired: "

    .line 64
    .line 65
    const-string v5, ", [homeWallpaperReq:"

    .line 66
    .line 67
    const-string v6, ", isFbeAvailable:"

    .line 68
    .line 69
    invoke-static {v4, v2, v5, v0, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, ", isSubScreen:"

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p0, "]"

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return v2
.end method

.method public final isFbeAvailable()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mScreenType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 27
    .line 28
    check-cast v0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeRequired(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isFbeWallpaperAvailable(I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_1
    return v3
.end method

.method public final onDataCleared()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onHomeWallpaperDestroyed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "onHomeWallpaperDestroyed: wallpaperId = "

    .line 12
    .line 13
    const-string v2, ", mWallpaperId = "

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 20
    .line 21
    const-string v3, "CoverWallpaperController"

    .line 22
    .line 23
    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    iput v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 35
    .line 36
    sget-object v2, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->NOT_REQUIRED:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    check-cast p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 49
    .line 50
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :try_start_0
    iget-object v4, v3, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v4, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    .line 77
    .line 78
    iput v1, v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mType:I

    .line 79
    .line 80
    iput-object v0, v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mPath:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v0, v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mUri:Landroid/net/Uri;

    .line 83
    .line 84
    iput-object v0, v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    .line 85
    .line 86
    iput-object v0, v4, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->mRect:Landroid/graphics/Rect;

    .line 87
    .line 88
    const-string v1, "PluginHomeWallpaper"

    .line 89
    .line 90
    const-string/jumbo v4, "resetWallpaper()"

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v1, v3, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 109
    .line 110
    if-eqz p0, :cond_1

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onWallpaperChanged(I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    return-void
.end method

.method public final onReady()V
    .locals 2

    .line 1
    const-string v0, "CoverWallpaperController"

    .line 2
    .line 3
    const-string v1, "onReady"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onSemBackupStatusChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemMultipackApplied(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "onSemWallpaperChanged: type = "

    .line 4
    .line 5
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ", which = "

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p3, "CoverWallpaperController"

    .line 24
    .line 25
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 37
    .line 38
    if-nez p0, :cond_0

    .line 39
    .line 40
    const-string p0, "SubScreenManager"

    .line 41
    .line 42
    const-string p1, "onSemWallpaperChanged() no plugin"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSemWallpaperChanged(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "onWallpaperHintUpdate: invalid which. which = "

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "CoverWallpaperController"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-virtual {v0, p1, p0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onWallpaperUpdate(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onWallpaperUpdate:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", isFirst:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "CoverWallpaperController"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->NOT_REQUIRED:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    sget-object v0, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->FIRST:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->NON_FIRST:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 53
    .line 54
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 55
    .line 56
    :goto_1
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isWatchFace(I)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 71
    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    const-string p0, "SubScreenManager"

    .line 75
    .line 76
    const-string p1, "onSemWallpaperChanged() no plugin"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 p1, 0x0

    .line 83
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSemWallpaperChanged(Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_2
    return-void
.end method

.method public final setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setWallpaperUpdateConsumer: consumer = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CoverWallpaperController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 26
    .line 27
    sget-object v0, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->NOT_REQUIRED:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    sget-object v2, Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;->FIRST:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 32
    .line 33
    if-ne p1, v2, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v3, "setWallpaperUpdateConsumer, delayed: "

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mDelayedUpdate:Lcom/android/systemui/wallpaper/CoverWallpaperController$DelayedUpdate;

    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final startMultiPack(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "/data/overlays/homewallpaper/"

    .line 73
    .line 74
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v3, Ljava/io/File;

    .line 85
    .line 86
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    array-length v3, v0

    .line 96
    if-lez v3, :cond_4

    .line 97
    .line 98
    array-length v3, v0

    .line 99
    move v4, v2

    .line 100
    :goto_0
    if-ge v4, v3, :cond_4

    .line 101
    .line 102
    aget-object v5, v0, v4

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const-string/jumbo v6, "wallpaper_[\\d][.][\\w]+"

    .line 109
    .line 110
    .line 111
    invoke-static {v6, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const-string/jumbo v6, "wallpaper_[\\d][.]"

    .line 119
    .line 120
    .line 121
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-eqz v6, :cond_3

    .line 141
    .line 142
    const-string v7, "[^0-9]"

    .line 143
    .line 144
    const-string v8, ""

    .line 145
    .line 146
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->getContentType(ILjava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 173
    .line 174
    :cond_5
    return-void
.end method
