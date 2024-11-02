.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x40

.field static final MIN_SURFACE_WIDTH:I = 0x40


# instance fields
.field public final mGifWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

.field public final mPluginGifWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;

.field public final mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

.field public mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

.field public mVirtualDisplayMode:Z

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginGifWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;

    .line 23
    .line 24
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, "Engine="

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p2, "valid surface="

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p4, "null"

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object p2, p4

    .line 60
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo p1, "surface frame="

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onCommand : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ImageWallpaper[GifGLEngine]"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "samsung.android.wallpaper.pause"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string/jumbo v0, "samsung.android.wallpaper.resume"

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->isFixedOrientationWallpaper(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Gif Engine onCreate  "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 38
    .line 39
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " , displayId"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 65
    .line 66
    const-string v3, "ImageWallpaper[GifGLEngine]"

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 82
    .line 83
    invoke-direct {v1, v2, v4}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginGifWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$1;

    .line 96
    .line 97
    check-cast v1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    .line 100
    .line 101
    .line 102
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 103
    .line 104
    if-eqz v1, :cond_0

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-static {v2, v4}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iput-boolean v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    .line 130
    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 132
    .line 133
    const-string v4, "display"

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 140
    .line 141
    new-instance v4, Landroid/view/DisplayInfo;

    .line 142
    .line 143
    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 144
    .line 145
    .line 146
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 147
    .line 148
    if-eqz v5, :cond_1

    .line 149
    .line 150
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 151
    .line 152
    if-eqz v6, :cond_1

    .line 153
    .line 154
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_1
    if-eqz v1, :cond_2

    .line 163
    .line 164
    const-string p1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    array-length v1, p1

    .line 171
    if-lez v1, :cond_2

    .line 172
    .line 173
    aget-object p1, p1, v0

    .line 174
    .line 175
    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 176
    .line 177
    .line 178
    :cond_2
    :goto_0
    iget p1, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 179
    .line 180
    iget v1, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v4, " device height : "

    .line 185
    .line 186
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v4, " , width "

    .line 193
    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    if-eqz v5, :cond_3

    .line 208
    .line 209
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 212
    .line 213
    iget-object v4, v2, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 214
    .line 215
    new-instance v5, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    .line 216
    .line 217
    invoke-direct {v5, v2, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    .line 222
    .line 223
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 224
    .line 225
    new-instance v3, Landroid/graphics/Rect;

    .line 226
    .line 227
    invoke-direct {v3, v0, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string/jumbo v4, "setBoundRect : "

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v4, "ImageWallpaperGifRenderer"

    .line 249
    .line 250
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iput-object v3, v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mBoundRect:Landroid/graphics/Rect;

    .line 254
    .line 255
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0, v1, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 271
    .line 272
    const/4 v1, 0x4

    .line 273
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    .line 278
    .line 279
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ImageWallpaper[GifGLEngine]"

    .line 5
    .line 6
    const-string v1, "GIF onDestroy "

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 45
    .line 46
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->onHomeWallpaperDestroyed()V

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$2;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    .line 62
    .line 63
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v0, "ImageWallpaperGifRenderer"

    .line 10
    .line 11
    const-string v1, " onSurfaceCreated "

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;ZI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
