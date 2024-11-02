.class public Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;


# instance fields
.field public final mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mBaseDeviceState:I

.field public final mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

.field public mCloseState:Z

.field public mDeviceState:I

.field public final mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

.field public mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

.field public mFadeIn:Landroid/view/animation/Animation;

.field public mImmersiveState:I

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsDimTouched:Z

.field public mIsResumeCalled:Z

.field public mMediaController:Landroid/media/session/MediaController;

.field public mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public mMediaView:Landroid/widget/LinearLayout;

.field public mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

.field public mPrevOrientation:I

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;

.field public mVideoControlsPanel:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mIsResumeCalled:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mImmersiveState:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mIsDimTouched:Z

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 17
    .line 18
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;

    .line 24
    .line 25
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;

    .line 31
    .line 32
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final checkActiveSession()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne v2, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    filled-new-array {v1}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;

    .line 45
    .line 46
    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$2;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;[ILandroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0xc8

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final closeOperation()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCloseState:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mPrevOrientation:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mPrevOrientation:I

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v3

    .line 14
    :goto_0
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v1, v4, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->dismissSplitTask(Landroid/os/IBinder;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "media_floating_only"

    .line 49
    .line 50
    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eq p1, v2, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->setupVideoControlsPanel()V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    sput-object p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 14
    .line 15
    iput-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 16
    .line 17
    const-class p1, Landroid/app/ActivityManager;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/app/ActivityManager;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 26
    .line 27
    const-string/jumbo p1, "video_controls_pref"

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string p1, "VideoControlsActivity"

    .line 38
    .line 39
    const-string v1, "IllegalArgumentException : "

    .line 40
    .line 41
    const-string v2, "ClassCastException : "

    .line 42
    .line 43
    const-string v3, "NullPointerException : "

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "low_power"

    .line 50
    .line 51
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x1

    .line 56
    if-ne v4, v5, :cond_0

    .line 57
    .line 58
    move v4, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v4, v0

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string/jumbo v7, "sem_power_mode_limited_apps_and_home_screen"

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ne v6, v5, :cond_1

    .line 73
    .line 74
    move v6, v5

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v6, v0

    .line 77
    :goto_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    :cond_2
    const/4 v4, 0x5

    .line 86
    :try_start_0
    invoke-virtual {v7, v4}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-array v6, v5, [Landroid/graphics/Rect;

    .line 101
    .line 102
    new-instance v7, Landroid/graphics/Rect;

    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    invoke-direct {v7, v0, v0, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .line 114
    .line 115
    aput-object v7, v6, v0

    .line 116
    .line 117
    invoke-static {p0, v4, v0, v0, v6}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    aget-object v6, v6, v0

    .line 122
    .line 123
    invoke-virtual {v4, v6}, Landroid/app/SemWallpaperColors;->get(Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors$Item;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    .line 130
    .line 131
    .line 132
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-ne p1, v5, :cond_3

    .line 134
    .line 135
    move p1, v5

    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-exception v2

    .line 138
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception v1

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catch_2
    move-exception v1

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .line 198
    .line 199
    :catchall_0
    :cond_3
    :goto_2
    const/4 p1, 0x2

    .line 200
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 216
    .line 217
    const/high16 v3, 0x1000000

    .line 218
    .line 219
    or-int/2addr v2, v3

    .line 220
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 227
    .line 228
    .line 229
    const-string v1, "media_session"

    .line 230
    .line 231
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 236
    .line 237
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 238
    .line 239
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 246
    .line 247
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 248
    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;

    .line 254
    .line 255
    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/4 v2, 0x0

    .line 263
    if-nez v1, :cond_4

    .line 264
    .line 265
    new-instance v1, Landroid/os/Handler;

    .line 266
    .line 267
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_4
    move-object v1, v2

    .line 272
    :goto_4
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 273
    .line 274
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;

    .line 275
    .line 276
    invoke-virtual {v3, v4, v2, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 277
    .line 278
    .line 279
    const v1, 0x7f0101a3

    .line 280
    .line 281
    .line 282
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mFadeIn:Landroid/view/animation/Animation;

    .line 287
    .line 288
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 289
    .line 290
    invoke-static {p0, v1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 295
    .line 296
    if-eqz v1, :cond_5

    .line 297
    .line 298
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 301
    .line 302
    .line 303
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 312
    .line 313
    iput v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mPrevOrientation:I

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const-string v2, "media_floating_only"

    .line 320
    .line 321
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eq v0, v5, :cond_7

    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 328
    .line 329
    invoke-static {p0, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_6

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->setupVideoControlsPanel()V

    .line 341
    .line 342
    .line 343
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    if-eqz v0, :cond_8

    .line 348
    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-eqz v0, :cond_8

    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    if-eqz v0, :cond_8

    .line 368
    .line 369
    if-ne p1, v5, :cond_8

    .line 370
    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    const/16 p1, 0x10

    .line 380
    .line 381
    invoke-interface {p0, p1, p1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 382
    .line 383
    .line 384
    :cond_8
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sput-object v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mActiveSessionsChangedListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDeviceStateCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$1;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mVideoControlsPanel:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const-string v2, "MediaPanel"

    .line 60
    .line 61
    const-string v3, "MediaPanel clearController"

    .line 62
    .line 63
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 71
    .line 72
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$H;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mIsResumeCalled:Z

    .line 6
    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MEDIA_IMMERSIVE_MODE:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$H;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v2, 0x1388

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "caption-touch"

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mInputMonitor:Landroid/view/InputMonitor;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mEventReceiver:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$EventReceiver;

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mTaskStackListener:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$Impl;

    .line 73
    .line 74
    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCloseState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final resizeDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    div-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p1, v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final setupVideoControlsPanel()V
    .locals 9

    .line 1
    const v0, 0x7f0d04ff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0d36

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, -0x1000000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const/high16 v2, 0x43480000    # 200.0f

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a063b

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    const-string/jumbo v1, "video_controls_mode"

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const v1, 0x7f0a0274

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a088a

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    const v3, 0x7f0a0889

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    const v3, 0x7f0a088b

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    const/4 v6, 0x2

    .line 103
    invoke-direct {v4, p0, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    const v3, 0x7f0a0891

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    invoke-direct {v7, p0, v0, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const v2, 0x7f0a0893

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    new-instance v7, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;

    .line 132
    .line 133
    invoke-direct {v7, p0, v0, v5}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    const v4, 0x7f0a088f

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-instance v8, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    invoke-direct {v8, p0, v0, v6}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    const v8, 0x7f080ec1

    .line 156
    .line 157
    .line 158
    if-eq v0, v5, :cond_1

    .line 159
    .line 160
    if-eq v0, v6, :cond_0

    .line 161
    .line 162
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "16:9"

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v2, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "21.5:9"

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v2, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    .line 218
    .line 219
    const-string v0, "18:9"

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    :goto_0
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 225
    .line 226
    const v1, 0x7f0a0cab

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Landroid/widget/LinearLayout;

    .line 234
    .line 235
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 236
    .line 237
    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/media/session/MediaController;)V

    .line 238
    .line 239
    .line 240
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mVideoControlsPanel:Lcom/android/wm/shell/controlpanel/activity/VideoControlsPanel;

    .line 241
    .line 242
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 243
    .line 244
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$4;->onMediaControllerConnected(Landroid/media/session/MediaController;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mMediaView:Landroid/widget/LinearLayout;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;

    .line 261
    .line 262
    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$3;-><init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
    .line 267
    .line 268
    return-void
.end method
