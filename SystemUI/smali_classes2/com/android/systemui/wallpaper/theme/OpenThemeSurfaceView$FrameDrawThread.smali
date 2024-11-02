.class public final Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field public mCount:I

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field public mTick:I

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 10
    .line 11
    const/16 p1, 0x22

    .line 12
    .line 13
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 6
    .line 7
    if-eqz v2, :cond_7

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    monitor-enter p0

    .line 14
    :goto_1
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    :try_start_0
    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    iget v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 21
    .line 22
    if-lez v6, :cond_1

    .line 23
    .line 24
    iput v4, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 31
    .line 32
    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :cond_2
    if-eqz v5, :cond_4

    .line 44
    .line 45
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 46
    .line 47
    :goto_2
    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 55
    .line 56
    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    throw v0

    .line 60
    :catch_0
    if-eqz v5, :cond_4

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    iget v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 71
    .line 72
    iget v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    iput v5, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 77
    .line 78
    const/16 v6, 0x3c

    .line 79
    .line 80
    if-ne v5, v6, :cond_5

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    sub-long v0, v5, v0

    .line 87
    .line 88
    long-to-double v0, v0

    .line 89
    const-wide v7, 0x42374876e8000000L    # 1.0E11

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    div-double/2addr v7, v0

    .line 95
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 96
    .line 97
    mul-double/2addr v7, v0

    .line 98
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    long-to-double v0, v0

    .line 103
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 104
    .line 105
    div-double/2addr v0, v7

    .line 106
    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;

    .line 107
    .line 108
    iget-object v7, v7, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v9, "fps: "

    .line 113
    .line 114
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iput v4, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    .line 128
    .line 129
    move-wide v0, v5

    .line 130
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    sub-long v6, v4, v2

    .line 135
    .line 136
    :try_start_2
    iget v8, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 137
    .line 138
    int-to-long v9, v8

    .line 139
    cmp-long v6, v6, v9

    .line 140
    .line 141
    if-gez v6, :cond_0

    .line 142
    .line 143
    int-to-long v6, v8

    .line 144
    add-long/2addr v6, v2

    .line 145
    sub-long/2addr v6, v4

    .line 146
    const-wide/16 v9, 0x96

    .line 147
    .line 148
    cmp-long v6, v6, v9

    .line 149
    .line 150
    if-lez v6, :cond_6

    .line 151
    .line 152
    const-wide/16 v2, 0x64

    .line 153
    .line 154
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_6
    int-to-long v6, v8

    .line 160
    add-long/2addr v6, v2

    .line 161
    sub-long/2addr v6, v4

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :catch_1
    move-exception v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :catchall_1
    move-exception v0

    .line 174
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    throw v0

    .line 176
    :cond_7
    return-void
.end method
