.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public mFixedRotationStartTime:J

.field public final synthetic this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "onDisplayConfigurationChanged displayId="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ", newConfig="

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 30
    .line 31
    const-string p2, "ImageWallpaper[GLEngine]"

    .line 32
    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Landroid/view/DisplayInfo;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 23
    .line 24
    const-string v5, "display"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 31
    .line 32
    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "ImageWallpaper[GLEngine]"

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v4, "  getCurrentDisplayRotation failed to get display. displayId="

    .line 45
    .line 46
    invoke-static {v4, v2, v5}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iget-wide v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->mFixedRotationStartTime:J

    .line 56
    .line 57
    sub-long/2addr v3, v6

    .line 58
    iget-object v6, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 59
    .line 60
    iget-object v6, v6, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 61
    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v8, "onFixedRotationFinished mRotation="

    .line 65
    .line 66
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v8, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 70
    .line 71
    const-string v9, ", displayRotation="

    .line 72
    .line 73
    const-string v10, ", configRotation="

    .line 74
    .line 75
    invoke-static {v7, v8, v9, v2, v10}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v8, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 79
    .line 80
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v8, ", elapsed="

    .line 88
    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, ", "

    .line 96
    .line 97
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v6, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 108
    .line 109
    invoke-virtual {v6, v5, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eq p1, v1, :cond_1

    .line 117
    .line 118
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "onFixedRotationFinished not my display : myId="

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ", fixedRotationId="

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 149
    .line 150
    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_1
    iget p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 155
    .line 156
    if-eq p1, v2, :cond_2

    .line 157
    .line 158
    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 161
    .line 162
    const-string v1, "onFixedRotationFinished Error orientation. So update Again."

    .line 163
    .line 164
    check-cast p1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 165
    .line 166
    invoke-virtual {p1, v5, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 170
    .line 171
    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    :cond_2
    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 6
    .line 7
    const-string v2, "onFixedRotationStarted displayId="

    .line 8
    .line 9
    const-string v3, ", newRotation="

    .line 10
    .line 11
    const-string v4, ", mRotation="

    .line 12
    .line 13
    invoke-static {v2, p1, v3, p2, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 45
    .line 46
    const-string v3, "ImageWallpaper[GLEngine]"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    iput-wide v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;->mFixedRotationStartTime:J

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eq p1, v1, :cond_0

    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "onFixedRotationStarted not my display : myId="

    .line 70
    .line 71
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->getDisplayId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", fixedRotationId="

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 94
    .line 95
    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    iget p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 100
    .line 101
    if-eq p1, p2, :cond_1

    .line 102
    .line 103
    iput p2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->mRotation:I

    .line 104
    .line 105
    iget-object p1, v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$2;I)V

    .line 117
    .line 118
    .line 119
    const-wide/16 v0, 0x96

    .line 120
    .line 121
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    .line 123
    .line 124
    :cond_1
    return-void
.end method
