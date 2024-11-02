.class public abstract Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mIsCreated:Z

.field public mIsScreenOn:Z

.field public mMinInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    .line 6
    .line 7
    const-string p1, "OpenThemeSurfaceView"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 16
    .line 17
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "stopThread"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v2, "suspendThread"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 17
    .line 18
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final screenTurnedOn()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v1, "resumeThread"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0

    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "surfaceCreated"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iput-boolean p1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 30
    .line 31
    :cond_0
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    iput p1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string/jumbo p1, "startThread"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    monitor-enter v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :try_start_0
    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 62
    .line 63
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0

    .line 70
    throw p0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v0, "surfaceDestroyed"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v1, "suspendThread"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    .line 25
    .line 26
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 30
    .line 31
    :cond_0
    return-void
.end method
