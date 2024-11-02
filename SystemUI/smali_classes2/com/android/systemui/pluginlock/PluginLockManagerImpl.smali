.class public final Lcom/android/systemui/pluginlock/PluginLockManagerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockManager;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;
.implements Lcom/android/systemui/util/DesktopManager$Callback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mCurrentPluginValueMap:Ljava/util/HashMap;

.field public final mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

.field public final mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

.field public mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

.field public mIsDynamicEnabled:Z

.field public mIsMigrating:Z

.field public mIsSwitchingToSub:Z

.field public final mLockPluginMap:Ljava/util/HashMap;

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field public final mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

.field public mRemovedPackageName:Ljava/lang/String;

.field public final mScreenList:[I

.field public mScreenType:I

.field public final mSettingsCallback:Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

.field public mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

.field public mUserId:I

.field public final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;Lcom/android/systemui/pluginlock/PluginLockDelegateApp;Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockUtils;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/util/DesktopManager;Landroid/content/Context;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    move-object/from16 v4, p6

    .line 9
    .line 10
    move-object/from16 v5, p10

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v6, "lockstar_enabled"

    .line 16
    .line 17
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-string/jumbo v6, "plugin_lock_sub_enabled"

    .line 22
    .line 23
    .line 24
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const-string v6, "emergency_mode"

    .line 29
    .line 30
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string/jumbo v6, "ultra_powersaving_mode"

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    const-string v6, "minimal_battery_use"

    .line 42
    .line 43
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-string v6, "lock_screen_show_notifications"

    .line 48
    .line 49
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    const-string v6, "lockscreen_minimizing_notification"

    .line 54
    .line 55
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    const-string v6, "lockscreen_show_shortcut"

    .line 60
    .line 61
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    filled-new-array/range {v7 .. v14}, [Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v7, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    iput-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    iput-boolean v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    .line 81
    .line 82
    new-instance v8, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    .line 88
    .line 89
    iput v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 90
    .line 91
    iput-boolean v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    .line 92
    .line 93
    iput v7, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    .line 94
    .line 95
    new-instance v8, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

    .line 96
    .line 97
    invoke-direct {v8, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    .line 98
    .line 99
    .line 100
    iput-object v8, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsCallback:Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 103
    .line 104
    move-object/from16 v9, p2

    .line 105
    .line 106
    iput-object v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 107
    .line 108
    move-object/from16 v9, p4

    .line 109
    .line 110
    iput-object v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 111
    .line 112
    iput-object v2, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 113
    .line 114
    move-object/from16 v9, p7

    .line 115
    .line 116
    iput-object v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 117
    .line 118
    iput-object v3, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 119
    .line 120
    iput-object v5, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    iput-object v9, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCr:Landroid/content/ContentResolver;

    .line 127
    .line 128
    iput-object v4, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 129
    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v10, "## PluginLockManager ##, "

    .line 133
    .line 134
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    const-string v10, "PluginLockManagerImpl"

    .line 145
    .line 146
    invoke-virtual {v4, v10, v9}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 150
    .line 151
    iput-object v1, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 157
    .line 158
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 159
    .line 160
    if-eqz v0, :cond_0

    .line 161
    .line 162
    move-object/from16 v0, p9

    .line 163
    .line 164
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 167
    .line 168
    .line 169
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    const/4 v0, 0x2

    .line 175
    new-array v0, v0, [I

    .line 176
    .line 177
    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 178
    .line 179
    aput v7, v0, v7

    .line 180
    .line 181
    aput v2, v0, v2

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_1
    new-array v0, v2, [I

    .line 185
    .line 186
    iput-object v0, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 187
    .line 188
    aput v7, v0, v7

    .line 189
    .line 190
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    .line 196
    move v7, v2

    .line 197
    :cond_2
    if-eqz v3, :cond_3

    .line 198
    .line 199
    if-eqz v7, :cond_3

    .line 200
    .line 201
    invoke-virtual {v3, v8, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 205
    .line 206
    if-nez v0, :cond_5

    .line 207
    .line 208
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 209
    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 218
    .line 219
    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-eqz v3, :cond_6

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget-boolean v0, v0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 233
    .line 234
    if-nez v0, :cond_6

    .line 235
    .line 236
    const-string v0, "PluginLockManager, virtual display: mScreenType = PluginLock.SCREEN_SUB"

    .line 237
    .line 238
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    iput v2, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    :goto_1
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_6

    .line 253
    .line 254
    const-string v0, "PluginLockManager: mScreenType = PluginLock.SCREEN_SUB"

    .line 255
    .line 256
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    iput v2, v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 267
    .line 268
    if-eqz v0, :cond_7

    .line 269
    .line 270
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda2;

    .line 271
    .line 272
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;)V

    .line 273
    .line 274
    .line 275
    const/16 v1, 0x3e8

    .line 276
    .line 277
    move-object/from16 v2, p8

    .line 278
    .line 279
    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 280
    .line 281
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;I)Z

    .line 282
    .line 283
    .line 284
    :cond_7
    return-void
.end method

.method public static notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(IZ)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "notifyPluginLockMode, "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/AbstractMethodError;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "PluginLockManagerImpl"

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onPluginLockModeChanged(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final disableByMode()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    const-string v5, "disableByMode, screen: "

    .line 17
    .line 18
    const-string v6, "PluginLockManagerImpl"

    .line 19
    .line 20
    invoke-static {v5, v4, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    .line 25
    const/16 v6, 0x4e20

    .line 26
    .line 27
    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v4, v2, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "plugin_lock_event_dump"

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDump()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p2, "PluginLockManagerImpl"

    .line 34
    .line 35
    const-string v0, "\n\nPluginLockManager event:\n"

    .line 36
    .line 37
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const-string v2, "------ Legacy --------------------------------------------------------------\n"

    .line 41
    .line 42
    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, "\n"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const-string v3, "------ New -----------------------------------------------------------------\n"

    .line 66
    .line 67
    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-string v4, "----------------------------------------------------------------------------\n"

    .line 89
    .line 90
    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final getCurrentPluginValue(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final handleEnableStateChanged(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "handleEnableStateChanged screen:"

    .line 8
    .line 9
    const-string v3, ", value:"

    .line 10
    .line 11
    const-string v4, "PluginLockManagerImpl"

    .line 12
    .line 13
    invoke-static {v2, p1, v3, v1, v4}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x7530

    .line 17
    .line 18
    if-eq v1, v2, :cond_5

    .line 19
    .line 20
    const/16 v2, 0x4e20

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-ne p1, v2, :cond_1

    .line 32
    .line 33
    const-string p0, "handleEnableStateChanged: not supported, skip!"

    .line 34
    .line 35
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-ne p1, v2, :cond_2

    .line 45
    .line 46
    const-string p1, "handleEnableStateChanged: migrating, skip!"

    .line 47
    .line 48
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsMigrating:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    const-string v0, "disableForcedIfNeed() disabled "

    .line 98
    .line 99
    invoke-static {v0, v1, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    .line 103
    .line 104
    .line 105
    move v0, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move v0, v3

    .line 108
    :goto_0
    if-eqz v0, :cond_4

    .line 109
    .line 110
    new-instance v0, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;

    .line 120
    .line 121
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-void

    .line 136
    :cond_5
    :goto_2
    const-string p0, "handleEnableStateChanged: user switched or mode changed, ignore!"

    .line 137
    .line 138
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final handleStandaloneDexMode(Z)V
    .locals 2

    .line 1
    const-string v0, "handleStandaloneDexMode, dexEnabled:"

    .line 2
    .line 3
    const-string v1, "PluginLockManagerImpl"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final isDynamicLockEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final isEnabledFromSettingHelper(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "isEnabledFromSettingHelper, screen:"

    .line 8
    .line 9
    const-string v2, ", value:"

    .line 10
    .line 11
    const-string v3, "PluginLockManagerImpl"

    .line 12
    .line 13
    invoke-static {v1, p1, v2, v0, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isEnable(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onDesktopModeStateChanged: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "PluginLockManagerImpl"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x65

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    const/16 v2, 0x32

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleStandaloneDexMode(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x2

    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v2, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->handleStandaloneDexMode(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final onFolderStateChanged(Z)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 7
    .line 8
    if-nez v2, :cond_2

    .line 9
    .line 10
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v2, v1

    .line 20
    goto :goto_2

    .line 21
    :cond_2
    :goto_1
    move v2, v0

    .line 22
    :goto_2
    iput v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 23
    .line 24
    const-string v2, "PluginLock:onFolderStateChanged, opened: "

    .line 25
    .line 26
    const-string v3, ", mScreenType: "

    .line 27
    .line 28
    invoke-static {v2, p1, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 33
    .line 34
    const-string v4, "PluginLockManagerImpl"

    .line 35
    .line 36
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 71
    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    iget v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 75
    .line 76
    iget-object v8, v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 77
    .line 78
    invoke-virtual {v8, v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 85
    .line 86
    if-eq v6, v7, :cond_3

    .line 87
    .line 88
    iget v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_3

    .line 95
    .line 96
    const-string v2, "PluginLock:onFolderStateChanged, newState found: null"

    .line 97
    .line 98
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move-object v6, v3

    .line 103
    :goto_3
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 104
    .line 105
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v7, "PluginLock:onFolderStateChanged, old: "

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 130
    .line 131
    iget-object v7, v7, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-object v2, v5

    .line 144
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 145
    .line 146
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onFolderStateChanged(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :catchall_0
    move-exception v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_4
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 155
    .line 156
    move-object v7, v5

    .line 157
    check-cast v7, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v9, "setScreenTypeChanged() type: "

    .line 165
    .line 166
    .line 167
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const-string v10, "PluginLockMediatorImpl"

    .line 178
    .line 179
    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    sget-boolean v8, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    .line 183
    .line 184
    if-nez v8, :cond_7

    .line 185
    .line 186
    sget-boolean v10, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 187
    .line 188
    if-nez v10, :cond_7

    .line 189
    .line 190
    sget-boolean v10, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 191
    .line 192
    if-eqz v10, :cond_6

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_6
    move v10, v1

    .line 196
    goto :goto_6

    .line 197
    :cond_7
    :goto_5
    move v10, v2

    .line 198
    :goto_6
    sput v10, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    .line 199
    .line 200
    const-string v10, "PluginLockWallpaper"

    .line 201
    .line 202
    invoke-static {v9, v2, v10}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    if-eqz v8, :cond_8

    .line 206
    .line 207
    move v10, v2

    .line 208
    goto :goto_7

    .line 209
    :cond_8
    move v10, v1

    .line 210
    :goto_7
    sput v10, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenType:I

    .line 211
    .line 212
    sput-boolean v8, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sScreenTypeChanged:Z

    .line 213
    .line 214
    const-string v8, "PluginHomeWallpaper"

    .line 215
    .line 216
    invoke-static {v9, v2, v8}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sput v2, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    .line 220
    .line 221
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 222
    .line 223
    if-eqz v2, :cond_b

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v8, "PluginLock:onFolderStateChanged, will be switched, newState: "

    .line 228
    .line 229
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    if-eqz v6, :cond_9

    .line 243
    .line 244
    const-string v2, "PluginLock:onFolderStateChanged, changed to new state"

    .line 245
    .line 246
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 250
    .line 251
    invoke-virtual {p0, v2, v6, v0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 256
    .line 257
    if-eqz v2, :cond_a

    .line 258
    .line 259
    iget v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 260
    .line 261
    invoke-virtual {v2, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_a

    .line 266
    .line 267
    const-string v2, "PluginLock:onFolderStateChanged, instance reset"

    .line 268
    .line 269
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 273
    .line 274
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_a
    const-string v2, "PluginLock:onFolderStateChanged, instance maintained"

    .line 279
    .line 280
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    :goto_8
    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 284
    .line 285
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updateEnabledState(IZ)V

    .line 286
    .line 287
    .line 288
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v7, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setEnabled(Z)V

    .line 293
    .line 294
    .line 295
    if-eqz v1, :cond_c

    .line 296
    .line 297
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 298
    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v2, "onFolderStateChanged, new: "

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 326
    .line 327
    invoke-virtual {v5, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onFolderStateChanged(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :catchall_1
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    :cond_c
    :goto_9
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserSwitchComplete, from: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", to: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 27
    .line 28
    const-string v2, "PluginLockManagerImpl"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v2, 0xbb8

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;II)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v2, 0x3e8

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    :goto_0
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUserId:I

    .line 68
    .line 69
    return-void
.end method

.method public final onUserSwitching(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onUserSwitching, userId: "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 9
    .line 10
    const-string v2, "PluginLockManagerImpl"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 21
    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x0

    .line 24
    move v3, v1

    .line 25
    :goto_0
    if-ge v3, v0, :cond_1

    .line 26
    .line 27
    aget v4, p1, v3

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const-string v5, "disableByUser, screen: "

    .line 36
    .line 37
    invoke-static {v5, v4, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 41
    .line 42
    const/16 v6, 0x7530

    .line 43
    .line 44
    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4, v1, v1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updatePluginLockMode(IZZ)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 2
    .line 3
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 20
    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    .line 36
    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    :goto_1
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setLatestPluginInstance(IZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLatestPluginInstance map size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isCurrentOwner:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PluginLockManagerImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 5
    iget-object v8, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v8, :cond_1

    .line 6
    sget-boolean v9, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamps(I)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_1

    .line 7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-gez v9, :cond_1

    .line 8
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v3, v7

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v3, :cond_5

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 11
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    move-result p2

    .line 13
    rem-int/lit8 p2, p2, 0xa

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    const/4 v0, 0x2

    .line 14
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLatestPluginInstance() set value:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLatestPluginInstance, screen:"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DISABLED_ALL"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    goto :goto_2

    .line 19
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    if-eqz p0, :cond_7

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final setLatestPluginInstance(Z)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 22
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setPluginInstance() screen:"

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
    const-string v1, ", state: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 25
    .line 26
    const-string v2, "PluginLockManagerImpl"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-nez p2, :cond_5

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, p1, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->destroy()V

    .line 69
    .line 70
    .line 71
    :cond_2
    move-object v1, v3

    .line 72
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->updateWindowSecureState(Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v0, p3}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_5
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 101
    .line 102
    iget-object v5, p2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 103
    .line 104
    iput-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 105
    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v6, "setPluginInstance() mInstanceState: "

    .line 109
    .line 110
    .line 111
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v6, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    if-nez p3, :cond_a

    .line 127
    .line 128
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 129
    .line 130
    iget p3, p3, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 131
    .line 132
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 133
    .line 134
    invoke-virtual {v5, p3}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    const/4 v5, 0x1

    .line 139
    if-eqz p3, :cond_7

    .line 140
    .line 141
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 142
    .line 143
    invoke-virtual {p3, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-nez p3, :cond_7

    .line 148
    .line 149
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 150
    .line 151
    invoke-virtual {p3, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    if-nez p3, :cond_7

    .line 156
    .line 157
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 158
    .line 159
    array-length v6, p3

    .line 160
    :goto_1
    if-ge v4, v6, :cond_9

    .line 161
    .line 162
    aget v7, p3, v4

    .line 163
    .line 164
    sget-boolean v8, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 165
    .line 166
    if-eqz v8, :cond_6

    .line 167
    .line 168
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 169
    .line 170
    invoke-virtual {v8, v7, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 175
    .line 176
    invoke-virtual {v7, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 177
    .line 178
    .line 179
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_7
    sget-boolean p3, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 183
    .line 184
    if-eqz p3, :cond_8

    .line 185
    .line 186
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 187
    .line 188
    invoke-virtual {p3, p1, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_8
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 193
    .line 194
    invoke-virtual {p3, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 195
    .line 196
    .line 197
    :cond_9
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string/jumbo v4, "setPluginInstance() set timestamp true for "

    .line 200
    .line 201
    .line 202
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, p2, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {v1, v2, p3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 218
    .line 219
    if-eqz p3, :cond_b

    .line 220
    .line 221
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 222
    .line 223
    invoke-virtual {p3, p1, v1}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 227
    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_c

    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 237
    .line 238
    invoke-interface {v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v1, p3}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    .line 243
    .line 244
    .line 245
    :cond_c
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 246
    .line 247
    move-object v1, v3

    .line 248
    check-cast v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 249
    .line 250
    invoke-virtual {v1, p3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 251
    .line 252
    .line 253
    if-eqz v0, :cond_d

    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 256
    .line 257
    if-eqz p0, :cond_d

    .line 258
    .line 259
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    move-object p0, v3

    .line 267
    check-cast p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 268
    .line 269
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 270
    .line 271
    if-eqz p3, :cond_f

    .line 272
    .line 273
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-ne p3, v0, :cond_e

    .line 282
    .line 283
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 284
    .line 285
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    .line 286
    .line 287
    invoke-virtual {p3, p0}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->onBarStateChanged(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_e
    iget-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 292
    .line 293
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;

    .line 294
    .line 295
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .line 300
    .line 301
    :cond_f
    :goto_4
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 302
    .line 303
    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final setPluginInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenList:[I

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    move v6, v4

    .line 14
    move v7, v6

    .line 15
    move v8, v7

    .line 16
    :goto_0
    const/4 v9, 0x1

    .line 17
    iget-object v10, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 18
    .line 19
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 20
    .line 21
    iget-object v12, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 22
    .line 23
    const-string v13, "PluginLockManagerImpl"

    .line 24
    .line 25
    if-ge v4, v3, :cond_6

    .line 26
    .line 27
    aget v14, v2, v4

    .line 28
    .line 29
    invoke-virtual {v11, v14}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    if-nez v6, :cond_1

    .line 34
    .line 35
    const/16 v6, 0x4e20

    .line 36
    .line 37
    if-ne v11, v6, :cond_0

    .line 38
    .line 39
    move v6, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v6, v7

    .line 42
    :cond_1
    :goto_1
    if-nez v8, :cond_3

    .line 43
    .line 44
    const/16 v8, 0x7530

    .line 45
    .line 46
    if-ne v11, v8, :cond_2

    .line 47
    .line 48
    move v8, v9

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v8, v7

    .line 51
    :cond_3
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v15, "setPluginInstanceState() settingValue:"

    .line 54
    .line 55
    .line 56
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v15, ", "

    .line 63
    .line 64
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v14}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->hasEnabledPlugin(I)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-nez v7, :cond_5

    .line 82
    .line 83
    rem-int/lit8 v7, v11, 0xa

    .line 84
    .line 85
    if-lez v7, :cond_5

    .line 86
    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v15, "setPluginInstanceState(): abnormal case detected: "

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v12, v13, v7}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget v7, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v11, v7}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_5

    .line 115
    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v11, "setPluginInstanceState(): "

    .line 119
    .line 120
    .line 121
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v7, " will have a timestamp"

    .line 128
    .line 129
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v12, v13, v7}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-boolean v7, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 140
    .line 141
    if-eqz v7, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1, v14, v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {v1, v9}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo v4, "setPluginInstanceState() getPackageName "

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v3, v4, v13}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v4, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_7

    .line 177
    .line 178
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_7
    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-object v7, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    .line 188
    .line 189
    const/4 v9, 0x0

    .line 190
    aget-object v7, v7, v9

    .line 191
    .line 192
    iget-object v9, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    iget-object v9, v10, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    .line 199
    .line 200
    if-eqz v7, :cond_9

    .line 201
    .line 202
    iget v7, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 203
    .line 204
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    move-object v14, v9

    .line 209
    check-cast v14, Ljava/util/HashMap;

    .line 210
    .line 211
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Ljava/lang/Integer;

    .line 216
    .line 217
    if-nez v7, :cond_8

    .line 218
    .line 219
    move-object v7, v5

    .line 220
    :cond_8
    iget v15, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 221
    .line 222
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    or-int/lit8 v7, v7, 0x1

    .line 231
    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    :cond_9
    sget-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 240
    .line 241
    if-eqz v7, :cond_a

    .line 242
    .line 243
    sget-boolean v7, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 244
    .line 245
    if-nez v7, :cond_a

    .line 246
    .line 247
    sget-object v7, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES_FOLDER:[Ljava/lang/String;

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_a
    sget-object v7, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    .line 251
    .line 252
    :goto_4
    array-length v14, v7

    .line 253
    const/4 v15, 0x0

    .line 254
    :goto_5
    const/16 v16, 0x2

    .line 255
    .line 256
    if-ge v15, v14, :cond_d

    .line 257
    .line 258
    move-object/from16 v17, v5

    .line 259
    .line 260
    aget-object v5, v7, v15

    .line 261
    .line 262
    move-object/from16 v18, v7

    .line 263
    .line 264
    iget-object v7, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eqz v5, :cond_c

    .line 271
    .line 272
    iget v5, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 273
    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    move-object v7, v9

    .line 279
    check-cast v7, Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Ljava/lang/Integer;

    .line 286
    .line 287
    move-object/from16 v19, v9

    .line 288
    .line 289
    if-nez v5, :cond_b

    .line 290
    .line 291
    move-object/from16 v5, v17

    .line 292
    .line 293
    :cond_b
    iget v9, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 294
    .line 295
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    or-int/lit8 v5, v5, 0x2

    .line 304
    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_c
    move-object/from16 v19, v9

    .line 314
    .line 315
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 316
    .line 317
    move-object/from16 v5, v17

    .line 318
    .line 319
    move-object/from16 v7, v18

    .line 320
    .line 321
    move-object/from16 v9, v19

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string/jumbo v7, "putPluginInstanceToMap, size "

    .line 327
    .line 328
    .line 329
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v4, ", packageName "

    .line 340
    .line 341
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    iget v3, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 355
    .line 356
    invoke-virtual {v10, v3}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    iget-object v4, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 361
    .line 362
    if-eqz v3, :cond_e

    .line 363
    .line 364
    move-object v3, v4

    .line 365
    check-cast v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 366
    .line 367
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 368
    .line 369
    iget-object v3, v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    .line 370
    .line 371
    invoke-interface {v3}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onReady()V

    .line 372
    .line 373
    .line 374
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCr:Landroid/content/ContentResolver;

    .line 375
    .line 376
    const-string/jumbo v5, "tss_activated"

    .line 377
    .line 378
    .line 379
    const/4 v7, 0x0

    .line 380
    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    const/4 v10, 0x1

    .line 385
    if-ne v9, v10, :cond_f

    .line 386
    .line 387
    const-string v9, "TSS Activated"

    .line 388
    .line 389
    invoke-virtual {v12, v13, v9}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    .line 394
    .line 395
    new-instance v3, Landroid/os/Handler;

    .line 396
    .line 397
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    .line 403
    .line 404
    new-instance v5, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;

    .line 405
    .line 406
    invoke-direct {v5, v0, v7}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockManagerImpl;I)V

    .line 407
    .line 408
    .line 409
    const-wide/16 v9, 0x1f4

    .line 410
    .line 411
    invoke-virtual {v3, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_e
    const/4 v7, 0x0

    .line 416
    :cond_f
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v5, "connected: "

    .line 419
    .line 420
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v5, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v12, v13, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    if-eqz v6, :cond_11

    .line 436
    .line 437
    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-nez v3, :cond_10

    .line 442
    .line 443
    invoke-virtual {v11}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_11

    .line 448
    .line 449
    :cond_10
    const-string/jumbo v0, "setPluginInstanceState() skip, disabled by mode"

    .line 450
    .line 451
    .line 452
    invoke-virtual {v12, v13, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :cond_11
    if-eqz v8, :cond_12

    .line 457
    .line 458
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-nez v3, :cond_12

    .line 463
    .line 464
    const-string/jumbo v0, "setPluginInstanceState() skip, disabled by user"

    .line 465
    .line 466
    .line 467
    invoke-virtual {v12, v13, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 471
    .line 472
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerUpdateMonitor()V

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :cond_12
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 477
    .line 478
    if-eqz v3, :cond_15

    .line 479
    .line 480
    iget-object v3, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 481
    .line 482
    const-string v5, "com.samsung.android.dynamiclock"

    .line 483
    .line 484
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-nez v5, :cond_14

    .line 489
    .line 490
    const-string v5, "com.samsung.android.mateagent"

    .line 491
    .line 492
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_13

    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_13
    move v3, v7

    .line 500
    goto :goto_9

    .line 501
    :cond_14
    :goto_8
    const/4 v3, 0x1

    .line 502
    :goto_9
    if-eqz v3, :cond_15

    .line 503
    .line 504
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 505
    .line 506
    iget-object v5, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-eqz v3, :cond_15

    .line 513
    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v5, "Re install after deleting package "

    .line 517
    .line 518
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object v5, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v12, v13, v3}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    check-cast v4, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 534
    .line 535
    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onDataCleared()V

    .line 536
    .line 537
    .line 538
    const/4 v3, 0x0

    .line 539
    iput-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mRemovedPackageName:Ljava/lang/String;

    .line 540
    .line 541
    :cond_15
    array-length v3, v2

    .line 542
    :goto_a
    if-ge v7, v3, :cond_1c

    .line 543
    .line 544
    aget v4, v2, v7

    .line 545
    .line 546
    sget-boolean v5, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 547
    .line 548
    if-eqz v5, :cond_16

    .line 549
    .line 550
    invoke-virtual {v1, v4}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance(I)Z

    .line 551
    .line 552
    .line 553
    move-result v6

    .line 554
    if-eqz v6, :cond_1b

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isRecentInstance()Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-eqz v6, :cond_1b

    .line 562
    .line 563
    :goto_b
    if-eqz v5, :cond_17

    .line 564
    .line 565
    iget v5, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 566
    .line 567
    if-ne v5, v4, :cond_18

    .line 568
    .line 569
    :cond_17
    iput-object v1, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 570
    .line 571
    iget-object v5, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 572
    .line 573
    iput-object v5, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 574
    .line 575
    :cond_18
    invoke-virtual {v11, v4}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    iget v6, v1, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 580
    .line 581
    invoke-static {v5, v6}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    if-eqz v8, :cond_1a

    .line 586
    .line 587
    rem-int/lit8 v8, v5, 0xa

    .line 588
    .line 589
    const/4 v9, 0x1

    .line 590
    if-ne v8, v9, :cond_19

    .line 591
    .line 592
    move/from16 v9, v16

    .line 593
    .line 594
    :cond_19
    add-int/2addr v6, v9

    .line 595
    goto :goto_c

    .line 596
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    .line 597
    .line 598
    :goto_c
    const-string/jumbo v8, "setPluginInstanceState screen:"

    .line 599
    .line 600
    .line 601
    const-string v9, ", now:"

    .line 602
    .line 603
    const-string v10, ", new:"

    .line 604
    .line 605
    invoke-static {v8, v4, v9, v5, v10}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    invoke-virtual {v12, v13, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v11, v4, v6}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    .line 620
    .line 621
    .line 622
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 623
    .line 624
    goto :goto_a

    .line 625
    :cond_1c
    return-void
.end method

.method public final updateEnabledState(IZ)V
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    const-string/jumbo v1, "updateEnabledState getPluginLockValue = "

    .line 15
    .line 16
    .line 17
    const-string v2, "PluginLockManagerImpl"

    .line 18
    .line 19
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x2710

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-lt v0, v1, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v4

    .line 31
    :goto_1
    if-nez p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isEnabledFromSettingHelper(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    move p1, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move p1, v4

    .line 42
    :goto_2
    const-string/jumbo p2, "updateEnabledState() isDynamicMode = "

    .line 43
    .line 44
    .line 45
    const-string v1, ", isEnabledFromSetting = "

    .line 46
    .line 47
    invoke-static {p2, v0, v1, p1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v3, v4

    .line 56
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 57
    .line 58
    return-void
.end method

.method public final updatePluginLockMode(IZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 10
    .line 11
    const-string v5, "PluginLockManagerImpl"

    .line 12
    .line 13
    const-string v6, "[PluginLock Switching] start"

    .line 14
    .line 15
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v6, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    :goto_0
    iget-boolean v8, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 32
    .line 33
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/16 v10, 0x7530

    .line 38
    .line 39
    if-nez v9, :cond_1

    .line 40
    .line 41
    if-eq v7, v10, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "[PluginLock Switching] ignore, screen: "

    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", pluginValue:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->updateEnabledState(IZ)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v10, "[PluginLock Switching]\n screen:"

    .line 75
    .line 76
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v10, "\n enable:"

    .line 83
    .line 84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v10, "\n pluginValue(final):"

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v10, "\n pluginValue(current):"

    .line 99
    .line 100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->getCurrentPluginValue(I)I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v10, "\n pluginValue(setting):"

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v1}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue(I)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v10, "\n wasEnabled:"

    .line 123
    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v10, "\n isEnabled:"

    .line 131
    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-boolean v10, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 136
    .line 137
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v10, "\n isForcedDisable:"

    .line 141
    .line 142
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v10, "\n isOwnerProcess:"

    .line 149
    .line 150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    const/4 v11, 0x0

    .line 158
    if-nez v10, :cond_2

    .line 159
    .line 160
    const/4 v10, 0x1

    .line 161
    goto :goto_1

    .line 162
    :cond_2
    move v10, v11

    .line 163
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v10, "\n isCurrentOwner:"

    .line 167
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isCurrentOwner()Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-virtual {v4, v5, v9}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    if-eqz v2, :cond_3

    .line 186
    .line 187
    if-eqz v7, :cond_3

    .line 188
    .line 189
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_3

    .line 194
    .line 195
    const-string v9, "[PluginLock Switching] getting disabled by the rescue party"

    .line 196
    .line 197
    invoke-virtual {v4, v5, v9}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v1, v11}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(II)V

    .line 201
    .line 202
    .line 203
    :cond_3
    iget-object v9, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mLockPluginMap:Ljava/util/HashMap;

    .line 204
    .line 205
    const-string v10, "PluginLockWallpaper"

    .line 206
    .line 207
    const-string/jumbo v11, "resetDynamicLock()"

    .line 208
    .line 209
    .line 210
    iget-object v12, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 211
    .line 212
    const-string v13, ", number:"

    .line 213
    .line 214
    iget-object v14, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateSysUi:Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;

    .line 215
    .line 216
    iget-object v15, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mDelegateApp:Lcom/android/systemui/pluginlock/PluginLockDelegateApp;

    .line 217
    .line 218
    iget-object v3, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPolicy:Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;

    .line 219
    .line 220
    if-eqz v2, :cond_13

    .line 221
    .line 222
    move-object v2, v12

    .line 223
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 224
    .line 225
    const/4 v6, 0x1

    .line 226
    iput-boolean v6, v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->registerUpdateMonitor()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v16

    .line 243
    if-eqz v16, :cond_7

    .line 244
    .line 245
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v16

    .line 249
    move-object/from16 p2, v6

    .line 250
    .line 251
    move-object/from16 v6, v16

    .line 252
    .line 253
    check-cast v6, Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 260
    .line 261
    if-nez v6, :cond_4

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_4
    move-object/from16 v16, v10

    .line 265
    .line 266
    iget v10, v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v7, v10}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-nez v10, :cond_6

    .line 276
    .line 277
    iget v10, v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 278
    .line 279
    invoke-virtual {v3, v10}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isDefaultInstance(I)Z

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    if-nez v10, :cond_6

    .line 284
    .line 285
    iget-object v10, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 286
    .line 287
    if-eqz v10, :cond_6

    .line 288
    .line 289
    iget-object v10, v10, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 290
    .line 291
    invoke-virtual {v10, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->isEnabled(I)Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-eqz v10, :cond_6

    .line 296
    .line 297
    new-instance v10, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    move-object/from16 v17, v12

    .line 300
    .line 301
    const-string v12, "[PluginLock Switching] enable, set timestamp 0 for "

    .line 302
    .line 303
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget v12, v6, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 307
    .line 308
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    invoke-virtual {v4, v5, v10}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sget-boolean v10, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 319
    .line 320
    if-eqz v10, :cond_5

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    invoke-virtual {v6, v1, v10}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_5
    const/4 v10, 0x0

    .line 328
    invoke-virtual {v6, v10}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_6
    move-object/from16 v17, v12

    .line 333
    .line 334
    :goto_3
    move-object/from16 v6, p2

    .line 335
    .line 336
    move-object/from16 v10, v16

    .line 337
    .line 338
    move-object/from16 v12, v17

    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_7
    :goto_4
    move-object/from16 v16, v10

    .line 342
    .line 343
    move-object/from16 v17, v12

    .line 344
    .line 345
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    if-eqz v6, :cond_23

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    check-cast v6, Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    check-cast v10, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 366
    .line 367
    if-nez v10, :cond_9

    .line 368
    .line 369
    goto/16 :goto_e

    .line 370
    .line 371
    :cond_9
    iget v12, v10, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    invoke-static {v7, v12}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-eqz v12, :cond_8

    .line 381
    .line 382
    const-string v2, "[PluginLock Switching] enable, screen: "

    .line 383
    .line 384
    const-string v9, ", mScreenType: "

    .line 385
    .line 386
    invoke-static {v2, v1, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    iget v9, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 391
    .line 392
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    const-string v9, ", key:"

    .line 396
    .line 397
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v4, v5, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v2, v10, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 417
    .line 418
    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 419
    .line 420
    if-eqz v6, :cond_c

    .line 421
    .line 422
    iget v9, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mScreenType:I

    .line 423
    .line 424
    if-ne v1, v9, :cond_a

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_a
    const/4 v3, 0x1

    .line 428
    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 429
    .line 430
    .line 431
    if-eqz v15, :cond_b

    .line 432
    .line 433
    if-eqz v2, :cond_b

    .line 434
    .line 435
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v15, v3}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setPanelView(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 440
    .line 441
    .line 442
    :cond_b
    if-eqz v2, :cond_12

    .line 443
    .line 444
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    if-eqz v3, :cond_12

    .line 449
    .line 450
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-interface {v3, v14}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    .line 455
    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_c
    :goto_5
    const/4 v9, 0x0

    .line 459
    invoke-virtual {v0, v1, v10, v9}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setPluginInstance(ILcom/android/systemui/pluginlock/PluginLockInstanceState;Z)V

    .line 460
    .line 461
    .line 462
    iget-boolean v9, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 463
    .line 464
    if-nez v9, :cond_d

    .line 465
    .line 466
    if-eqz v8, :cond_e

    .line 467
    .line 468
    :cond_d
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    move-object/from16 v12, v17

    .line 472
    .line 473
    check-cast v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 474
    .line 475
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetDynamicLock()V

    .line 476
    .line 477
    .line 478
    :cond_e
    iget v8, v10, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 479
    .line 480
    iget-object v3, v3, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    .line 481
    .line 482
    div-int/lit8 v9, v8, 0xa

    .line 483
    .line 484
    mul-int/lit8 v9, v9, 0xa

    .line 485
    .line 486
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    check-cast v3, Ljava/util/HashMap;

    .line 491
    .line 492
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    check-cast v3, Ljava/lang/Integer;

    .line 497
    .line 498
    if-eqz v3, :cond_f

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    const/4 v9, 0x2

    .line 505
    and-int/2addr v3, v9

    .line 506
    if-ne v3, v9, :cond_f

    .line 507
    .line 508
    const/4 v3, 0x1

    .line 509
    goto :goto_6

    .line 510
    :cond_f
    const/4 v3, 0x0

    .line 511
    :goto_6
    const-string v9, "isDualDisplayInstance() allowedNumber:"

    .line 512
    .line 513
    const-string v10, ", ret:"

    .line 514
    .line 515
    const-string v11, "PluginLockInstancePolicy"

    .line 516
    .line 517
    invoke-static {v9, v8, v10, v3, v11}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    .line 518
    .line 519
    .line 520
    if-nez v3, :cond_11

    .line 521
    .line 522
    if-eqz v6, :cond_10

    .line 523
    .line 524
    goto :goto_7

    .line 525
    :cond_10
    const/4 v3, 0x0

    .line 526
    goto :goto_8

    .line 527
    :cond_11
    :goto_7
    const/4 v3, 0x1

    .line 528
    :goto_8
    const-string/jumbo v6, "setDualDisplayPlugin() : "

    .line 529
    .line 530
    .line 531
    move-object/from16 v10, v16

    .line 532
    .line 533
    invoke-static {v6, v3, v10}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    sput-boolean v3, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    .line 537
    .line 538
    :cond_12
    :goto_9
    const/4 v3, 0x1

    .line 539
    invoke-static {v2, v1, v3}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_e

    .line 543
    .line 544
    :cond_13
    move-object/from16 v17, v12

    .line 545
    .line 546
    const/16 v2, 0x7530

    .line 547
    .line 548
    if-eq v7, v2, :cond_15

    .line 549
    .line 550
    sget-boolean v2, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 551
    .line 552
    if-eqz v2, :cond_14

    .line 553
    .line 554
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 555
    .line 556
    if-eqz v2, :cond_14

    .line 557
    .line 558
    invoke-virtual {v2, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->isEnabledOtherScreen(I)Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-nez v2, :cond_15

    .line 563
    .line 564
    :cond_14
    move-object/from16 v12, v17

    .line 565
    .line 566
    check-cast v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 567
    .line 568
    iget-object v2, v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 569
    .line 570
    iget-object v12, v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 571
    .line 572
    invoke-virtual {v2, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 573
    .line 574
    .line 575
    :cond_15
    move-object/from16 v12, v17

    .line 576
    .line 577
    check-cast v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 578
    .line 579
    invoke-virtual {v12}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetConfigs()V

    .line 580
    .line 581
    .line 582
    if-eqz v8, :cond_18

    .line 583
    .line 584
    iget-boolean v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsDynamicEnabled:Z

    .line 585
    .line 586
    if-nez v2, :cond_18

    .line 587
    .line 588
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-nez v2, :cond_17

    .line 593
    .line 594
    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-nez v2, :cond_17

    .line 599
    .line 600
    iget-boolean v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mIsSwitchingToSub:Z

    .line 601
    .line 602
    if-eqz v2, :cond_16

    .line 603
    .line 604
    goto :goto_a

    .line 605
    :cond_16
    const/4 v2, 0x0

    .line 606
    goto :goto_b

    .line 607
    :cond_17
    :goto_a
    const/4 v2, 0x1

    .line 608
    :goto_b
    invoke-virtual {v12, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetDynamicLockData(Z)V

    .line 609
    .line 610
    .line 611
    :cond_18
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    move-object/from16 v2, v17

    .line 615
    .line 616
    check-cast v2, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 617
    .line 618
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->resetDynamicLock()V

    .line 619
    .line 620
    .line 621
    const-string/jumbo v2, "setDualDisplayPlugin() : false"

    .line 622
    .line 623
    .line 624
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    const/4 v2, 0x0

    .line 628
    sput-boolean v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->sDualDisplayPlugin:Z

    .line 629
    .line 630
    const/4 v2, 0x0

    .line 631
    if-eqz v15, :cond_19

    .line 632
    .line 633
    invoke-virtual {v15, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    .line 634
    .line 635
    .line 636
    :cond_19
    if-eqz v14, :cond_1a

    .line 637
    .line 638
    invoke-virtual {v14, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockDelegateSysUi;->setPluginLockInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 639
    .line 640
    .line 641
    :cond_1a
    invoke-virtual {v12, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 645
    .line 646
    .line 647
    iput-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 648
    .line 649
    iput-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 650
    .line 651
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v2

    .line 659
    :cond_1b
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v6

    .line 663
    if-eqz v6, :cond_23

    .line 664
    .line 665
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v6

    .line 669
    check-cast v6, Ljava/lang/String;

    .line 670
    .line 671
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    check-cast v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 676
    .line 677
    if-nez v8, :cond_1c

    .line 678
    .line 679
    return-void

    .line 680
    :cond_1c
    if-eqz v7, :cond_1d

    .line 681
    .line 682
    const/16 v10, 0x4e20

    .line 683
    .line 684
    if-eq v7, v10, :cond_1d

    .line 685
    .line 686
    const/16 v10, 0x7530

    .line 687
    .line 688
    if-eq v7, v10, :cond_1d

    .line 689
    .line 690
    iget v10, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 691
    .line 692
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    .line 694
    .line 695
    invoke-static {v7, v10}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 696
    .line 697
    .line 698
    move-result v10

    .line 699
    if-eqz v10, :cond_1b

    .line 700
    .line 701
    :cond_1d
    const-string v10, "[PluginLock Switching] disable, pluginValue:"

    .line 702
    .line 703
    const-string v11, "key:"

    .line 704
    .line 705
    invoke-static {v10, v7, v11, v6, v13}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    iget v10, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 710
    .line 711
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    iget-object v6, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 722
    .line 723
    const/4 v10, 0x0

    .line 724
    invoke-static {v6, v1, v10}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->notifyPluginLockModeChanged(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;IZ)V

    .line 725
    .line 726
    .line 727
    if-nez v7, :cond_20

    .line 728
    .line 729
    iget-wide v10, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 730
    .line 731
    const-wide/16 v14, 0x0

    .line 732
    .line 733
    cmp-long v6, v10, v14

    .line 734
    .line 735
    if-lez v6, :cond_1e

    .line 736
    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    .line 738
    .line 739
    const-string v10, "[PluginLock Switching] disable all, set timestamp 0 for "

    .line 740
    .line 741
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    iget v10, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 745
    .line 746
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v6

    .line 753
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    :cond_1e
    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 757
    .line 758
    if-eqz v6, :cond_1f

    .line 759
    .line 760
    const/4 v6, 0x0

    .line 761
    invoke-virtual {v8, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 762
    .line 763
    .line 764
    goto :goto_c

    .line 765
    :cond_1f
    const/4 v6, 0x0

    .line 766
    invoke-virtual {v8, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 767
    .line 768
    .line 769
    goto :goto_c

    .line 770
    :cond_20
    iget v6, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 771
    .line 772
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    invoke-static {v7, v6}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->isSameInstance(II)Z

    .line 776
    .line 777
    .line 778
    move-result v6

    .line 779
    if-eqz v6, :cond_22

    .line 780
    .line 781
    if-nez p3, :cond_1b

    .line 782
    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    const-string v10, "[PluginLock Switching] disable, set timestamp 0 for "

    .line 786
    .line 787
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    iget v10, v8, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 791
    .line 792
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v6

    .line 799
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    sget-boolean v6, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    .line 803
    .line 804
    if-eqz v6, :cond_21

    .line 805
    .line 806
    const/4 v6, 0x0

    .line 807
    invoke-virtual {v8, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setStateData(IZ)V

    .line 808
    .line 809
    .line 810
    goto :goto_d

    .line 811
    :cond_21
    const/4 v6, 0x0

    .line 812
    invoke-virtual {v8, v6}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->setTimeStamp(Z)V

    .line 813
    .line 814
    .line 815
    :goto_d
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->setLatestPluginInstance(IZ)V

    .line 816
    .line 817
    .line 818
    goto/16 :goto_c

    .line 819
    .line 820
    :cond_22
    const-string v6, "[PluginLock Switching] disable,  won\'t update timestamp, "

    .line 821
    .line 822
    invoke-static {v6, v7, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 823
    .line 824
    .line 825
    goto/16 :goto_c

    .line 826
    .line 827
    :cond_23
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->isDynamicLockEnabled()Z

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    move-object/from16 v12, v17

    .line 832
    .line 833
    check-cast v12, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;

    .line 834
    .line 835
    invoke-virtual {v12, v2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setEnabled(Z)V

    .line 836
    .line 837
    .line 838
    iget-object v2, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mCurrentPluginValueMap:Ljava/util/HashMap;

    .line 839
    .line 840
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v3

    .line 848
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    const-string v2, "[PluginLock Switching] done, "

    .line 854
    .line 855
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    iget-object v0, v0, Lcom/android/systemui/pluginlock/PluginLockManagerImpl;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 859
    .line 860
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    return-void
.end method
