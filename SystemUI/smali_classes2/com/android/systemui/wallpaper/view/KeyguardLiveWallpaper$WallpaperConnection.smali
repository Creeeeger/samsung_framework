.class public final Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAlpha:F

.field public mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

.field public mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field public final mIntent:Landroid/content/Intent;

.field public mIsEngineAttached:Z

.field public mIsEngineVisible:Z

.field public mIsReleaseRequested:Z

.field public mIsVisible:Z

.field public final mListener:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$Listener;

.field public mService:Landroid/service/wallpaper/IWallpaperService;

.field public final mToken:Landroid/os/Binder;

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;Landroid/content/Intent;Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$Listener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Binder;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 12
    .line 13
    sget-object p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->DISCONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z

    .line 19
    .line 20
    const/high16 p1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mAlpha:F

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "KeyguardLiveWallpaper.conn@"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v1, 0xffff

    .line 36
    .line 37
    .line 38
    and-int/2addr v0, v1

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mListener:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$Listener;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .locals 3

    .line 1
    const-string p2, "attachEngine: connectedEngine="

    .line 2
    .line 3
    const-string v0, "attachEngine: service disconnected or released. isReleased="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->DISCONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsReleaseRequested:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ", prevEngine="

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsVisible:Z

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setEngineVisibility(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsReleaseRequested:Z

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p1
.end method

.method public final attachWindow()V
    .locals 14

    .line 1
    const-string v0, "attachWindow: Failed attaching wallpaper. e="

    .line 2
    .line 3
    const-string v1, "attachWindow: invalid view size! w="

    .line 4
    .line 5
    const-string v2, "attachWindow: w = "

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ", h = "

    .line 37
    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", mIsEngineAttached="

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    if-lez v9, :cond_1

    .line 62
    .line 63
    if-lez v10, :cond_1

    .line 64
    .line 65
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 66
    .line 67
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 68
    .line 69
    const/16 v7, 0xa49

    .line 70
    .line 71
    const/4 v8, 0x1

    .line 72
    new-instance v11, Landroid/graphics/Rect;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {v11, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, 0x2

    .line 91
    move-object v5, p0

    .line 92
    invoke-interface/range {v4 .. v13}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;II)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 98
    .line 99
    iget v2, v2, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mUserId:I

    .line 100
    .line 101
    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperService;->setCurrentUserId(I)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, ", h="

    .line 142
    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 154
    .line 155
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    monitor-exit p0

    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    throw v0
.end method

.method public final detachEngine()V
    .locals 4

    .line 1
    const-string v0, "detachEngine: Failed detaching wallpaper. e="

    .line 2
    .line 3
    const-string v1, "detachEngine: detach. engine = "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "detachEngine: service is null"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "detachEngine: engine not attached"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Landroid/service/wallpaper/IWallpaperService;->detach(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :goto_0
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineAttached:Z

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw v0
.end method

.method public final disconnect()V
    .locals 5

    .line 1
    const-string v0, "disconnect: unbind error="

    .line 2
    .line 3
    const-string v1, "disconnect: unbind the service. engine="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->DISCONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setConnectionState(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v2, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw v0
.end method

.method public final engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v2, v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "Failure to setDesiredSize "

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v0, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 52
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "engineShown: "

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, ", focus="

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", isShowing="

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setSurfaceAlpha(F)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsVisible:Z

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setEngineVisibility(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    const/4 v2, 0x4

    .line 118
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->setThumbnailVisibility(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onServiceConnected: service connected. name: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ", service=@"

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", connState="

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ", mIsKeyguardShowing = "

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 49
    .line 50
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 67
    .line 68
    sget-object p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->CONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setConnectionState(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;)V

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsReleaseRequested:Z

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    const-string p2, "onServiceConnected: connection release reserved"

    .line 80
    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->release()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 89
    .line 90
    iget-object p2, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 91
    .line 92
    if-ne p2, p0, :cond_1

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "onServiceConnected: Attaching engine. service = "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 115
    .line 116
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->attachWindow()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string p2, "onServiceConnected: not active connection"

    .line 126
    .line 127
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->release()V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    const-string v0, "onServiceDisconnected: comp = "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 23
    .line 24
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;->DISCONNECTED:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->setConnectionState(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 35
    .line 36
    if-ne v0, p0, :cond_0

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "onServiceDisconnected: active wallpaper service gone."

    .line 43
    .line 44
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->release()V

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final release()V
    .locals 4

    .line 1
    const-string/jumbo v0, "release: engine="

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", service="

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", connState="

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsReleaseRequested:Z

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->detachEngine()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->disconnect()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mListener:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$Listener;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    check-cast v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda2;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 68
    .line 69
    if-ne p0, v1, :cond_0

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "onReleased : active connection released. conn="

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "KeyguardLiveWallpaper"

    .line 88
    .line 89
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    iput-object v1, v0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mWallpaperConnection:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;

    .line 94
    .line 95
    :cond_0
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw v0
.end method

.method public final setConnectionState(Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setConnectionState: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mConnectionState:Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection$ConnectionState;

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public final setEngineVisibility(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setEngineVisibility : "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineVisible:Z

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mIsEngineVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "Failure setting wallpaper visibility "

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method

.method public final setSurfaceAlpha(F)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setSurfaceAlpha prev = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mAlpha:F

    .line 9
    .line 10
    cmpl-float v1, v1, p1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mAlpha:F

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " , new = "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setSurfaceAlpha(F)V

    .line 44
    .line 45
    .line 46
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->mAlpha:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardLiveWallpaper$WallpaperConnection;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "Failure to setSurfaceAlpha "

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    return-void
.end method

.method public final setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
