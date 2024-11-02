.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$5;

.field public mEventConsumer:Ljava/util/function/Consumer;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mOccluded:Z

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mWakefulnessObserver:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;


# direct methods
.method public static -$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "sendMessage(), what = "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " , obj = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " , arg1 = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " , arg2 = -1"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "KeyguardWallpaperEventHandler"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Landroid/os/Message;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 52
    .line 53
    .line 54
    iput p1, v0, Landroid/os/Message;->what:I

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    :cond_0
    const/4 p1, -0x1

    .line 61
    if-eq p3, p1, :cond_1

    .line 62
    .line 63
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    .line 66
    .line 67
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    .line 15
    .line 16
    .line 17
    iput-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mBroadcastReceiver:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;

    .line 18
    .line 19
    const-string v5, "minimal_battery_use"

    .line 20
    .line 21
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string/jumbo v5, "ultra_powersaving_mode"

    .line 26
    .line 27
    .line 28
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const-string v5, "emergency_mode"

    .line 33
    .line 34
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-string v5, "lockscreen_wallpaper"

    .line 39
    .line 40
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string v5, "lockscreen_wallpaper_sub"

    .line 45
    .line 46
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    const-string v5, "lock_adaptive_color"

    .line 51
    .line 52
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    const-string v5, "lock_adaptive_color_sub"

    .line 57
    .line 58
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    const-string v5, "lockscreen_wallpaper_transparent"

    .line 63
    .line 64
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    const-string/jumbo v5, "sub_display_lockscreen_wallpaper_transparency"

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    const-string/jumbo v5, "wallpapertheme_state"

    .line 76
    .line 77
    .line 78
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    const-string v5, "lock_screen_allow_rotation"

    .line 83
    .line 84
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v16

    .line 88
    filled-new-array/range {v6 .. v16}, [Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;

    .line 93
    .line 94
    invoke-direct {v6, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 98
    .line 99
    new-instance v7, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;

    .line 100
    .line 101
    invoke-direct {v7, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    .line 102
    .line 103
    .line 104
    iput-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mWakefulnessObserver:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;

    .line 105
    .line 106
    new-instance v8, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;

    .line 107
    .line 108
    invoke-direct {v8, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    .line 109
    .line 110
    .line 111
    iput-object v8, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$4;

    .line 112
    .line 113
    new-instance v9, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$5;

    .line 114
    .line 115
    invoke-direct {v9, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    .line 116
    .line 117
    .line 118
    iput-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mDesktopCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$5;

    .line 119
    .line 120
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    iput-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 123
    .line 124
    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v6, p3

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iput-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 133
    .line 134
    invoke-virtual {v3, v8, v5}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 135
    .line 136
    .line 137
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 138
    .line 139
    if-eqz v3, :cond_0

    .line 140
    .line 141
    const-class v3, Lcom/android/systemui/util/DesktopManager;

    .line 142
    .line 143
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/systemui/util/DesktopManager;

    .line 148
    .line 149
    check-cast v3, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 150
    .line 151
    invoke-virtual {v3, v9}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    .line 155
    .line 156
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v5, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v5, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 165
    .line 166
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v5, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    .line 170
    .line 171
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    iget-boolean v1, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 179
    .line 180
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mOccluded:Z

    .line 181
    .line 182
    return-void
.end method
