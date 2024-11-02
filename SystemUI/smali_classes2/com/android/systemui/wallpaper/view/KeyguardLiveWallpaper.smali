.class public final Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mRunnableAttachService:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

.field public mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

.field public mRunnableUpdateVisibility:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mShowing:Z

.field public mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

.field public final mThumbnailView:Landroid/widget/ImageView;

.field public mThumbnailVisibility:I

.field public final mUserId:I

.field public mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

.field public final mWallpaperIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZLcom/android/systemui/util/SettingsHelper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZIZ",
            "Lcom/android/systemui/util/SettingsHelper;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v10, p1

    .line 3
    move-object/from16 v11, p5

    .line 4
    .line 5
    move/from16 v12, p9

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object/from16 v3, p3

    .line 11
    .line 12
    move-object/from16 v4, p4

    .line 13
    .line 14
    move-object/from16 v5, p6

    .line 15
    .line 16
    move/from16 v6, p10

    .line 17
    .line 18
    move/from16 v7, p7

    .line 19
    .line 20
    move/from16 v8, p8

    .line 21
    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V

    .line 23
    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 27
    .line 28
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableAttachService:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    new-instance v1, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 49
    .line 50
    iput-object v10, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    move/from16 v1, p8

    .line 53
    .line 54
    iput-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 55
    .line 56
    new-instance v1, Landroid/content/Intent;

    .line 57
    .line 58
    const-string v2, "android.service.wallpaper.WallpaperService"

    .line 59
    .line 60
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperIntent:Landroid/content/Intent;

    .line 64
    .line 65
    iput v12, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mUserId:I

    .line 66
    .line 67
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 68
    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 74
    .line 75
    :goto_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v2, v12}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 84
    .line 85
    iput-object v11, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 86
    .line 87
    const-string v2, "KeyguardLiveWallpaper : userId = "

    .line 88
    .line 89
    const-string v3, ", componentName = "

    .line 90
    .line 91
    invoke-static {v2, v12, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, ", mIsKeyguardShowing = "

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-boolean v3, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move-object v3, v11

    .line 115
    check-cast v3, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 116
    .line 117
    const-string v4, "KeyguardLiveWallpaper"

    .line 118
    .line 119
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v2, p11

    .line 123
    .line 124
    iput-object v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 125
    .line 126
    iget-object v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 127
    .line 128
    if-nez v2, :cond_1

    .line 129
    .line 130
    return-void

    .line 131
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    .line 136
    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->requestAttachService()V

    .line 142
    .line 143
    .line 144
    new-instance v1, Landroid/widget/ImageView;

    .line 145
    .line 146
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iput v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 156
    .line 157
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 166
    .line 167
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 171
    .line 172
    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "KeyguardLiveWallpaper"

    .line 27
    .line 28
    const-string/jumbo v1, "updateThumbnail, remove runnable"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final dispatchWallpaperCommand(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "dispatchWallpaperCommand : "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v3, p1

    .line 27
    invoke-interface/range {v2 .. v7}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchPointer(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onFingerprintAuthSuccess(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string v0, "KeyguardLiveWallpaper"

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "onFingerprintAuthSuccess: hide wallpaper surface"

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setSurfaceAlpha(F)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "onFingerprintAuthSuccess: fingerprint unlock not allowed now"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final onKeyguardShowing(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 2
    .line 3
    const-string v0, "onKeyguardShowing = "

    .line 4
    .line 5
    const-string v1, "KeyguardLiveWallpaper"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mAlpha:F

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    cmpl-float v0, v0, v1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->updateVisibilityOnUiThread(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const-string p1, "onLayout called : "

    .line 5
    .line 6
    const-string v0, " , "

    .line 7
    .line 8
    invoke-static {p1, p2, v0, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "KeyguardLiveWallpaper"

    .line 13
    .line 14
    invoke-static {p1, p4, v0, p5, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->attachWindow()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    iget-object p3, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 53
    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    :try_start_0
    invoke-interface {p3, p2, p0}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string p2, "Failure to setDesiredSize "

    .line 64
    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    :cond_2
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    move v0, v2

    .line 40
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 41
    .line 42
    :goto_1
    const-string/jumbo v0, "onVisibilityChanged called : visibility="

    .line 43
    .line 44
    .line 45
    const-string v3, " , showingAndNotOccluded="

    .line 46
    .line 47
    invoke-static {v0, p2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " , showing="

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    .line 63
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " , isDeviceInteractive="

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    .line 75
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, " , connState="

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const/4 v0, 0x0

    .line 93
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, " , view="

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string p2, "KeyguardLiveWallpaper"

    .line 109
    .line 110
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 114
    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 118
    .line 119
    sget-object v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->CONNECTING:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 120
    .line 121
    if-eq p1, v0, :cond_6

    .line 122
    .line 123
    sget-object v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->CONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 124
    .line 125
    if-ne p1, v0, :cond_5

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move v1, v2

    .line 129
    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 130
    .line 131
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 132
    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    const/4 v2, 0x4

    .line 136
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->setThumbnailVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->updateVisibilityOnUiThread(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 146
    .line 147
    if-eqz p1, :cond_9

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 150
    .line 151
    const-string/jumbo v0, "onVisibilityChanged : service is disconnected, so try to reconnect"

    .line 152
    .line 153
    .line 154
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 155
    .line 156
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->requestAttachService()V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_4
    return-void
.end method

.method public final requestAttachService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableAttachService:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableAttachService:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setThumbnailVisibility(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "setThumbnailVisibility prev = "

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 26
    .line 27
    const-string v2, " , new = "

    .line 28
    .line 29
    const-string v3, "KeyguardLiveWallpaper"

    .line 30
    .line 31
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnail:Landroid/graphics/drawable/BitmapDrawable;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mThumbnailVisibility:I

    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mUserId:I

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v2, "update: new comp = "

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " , prev comp = "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "KeyguardLiveWallpaper"

    .line 47
    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const-string v1, "android.wallpaper.reapply"

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->dispatchWallpaperCommand(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperIntent:Landroid/content/Intent;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->requestAttachService()V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mComponentName:Landroid/content/ComponentName;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 88
    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public final updateDrawState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mShowing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 12
    .line 13
    const-string/jumbo v0, "updateDrawState : service is disconnected, so try to reconnect"

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 17
    .line 18
    const-string v1, "KeyguardLiveWallpaper"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->requestAttachService()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final updateThumbnail()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 2
    .line 3
    const-string v1, "KeyguardLiveWallpaper"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/systemui/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 16
    .line 17
    const-string/jumbo v0, "updateThumbnail failed if invalid which."

    .line 18
    .line 19
    .line 20
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string/jumbo v0, "updateThumbnail, remove runnable"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateThumbnail:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final updateVisibilityOnUiThread(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateVisibility:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "KeyguardLiveWallpaper"

    .line 6
    .line 7
    const-string/jumbo v1, "updateVisibilityOnUiThread, remove runnable"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateVisibility:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mRunnableUpdateVisibility:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
